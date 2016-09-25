<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use Symfony\Component\HttpFoundation\File\UploadedFile;
use Validator;
use DB;
use Mail;
use App\User;
use App\Category;
use App\Product;

class ProductController extends Controller
{
    public function create(){
        $categories=Category::all();
    	return view('adminPanel_product_new', ['categories'=>$categories]);
    }
    public function storeCreated(Request $request){
        $validator=Validator::make([
            'name'=>$request->name,
            'price'=>$request->price,
            'category'=>$request->category
        ],
        [
            'name'=>'required|unique:products,name',
            'price'=>'required|integer',
            'category'=>'not_in:undefined'
        ]);
        if($validator->fails()){
            return response()->json(['success'=>false, 'validationErrors'=>$validator->errors()->toArray()]);
        }
        $slug=Controller::generateSlug($request);
        $product=Product::where('slug', '=', $slug)->first();
        if(!$slug || $product){
            return response()->json(['success'=>false, 'slugError'=>'Введите другое имя.']);
        }
        $product=new Product;
        $product->name=$request->name;
        $product->slug=$slug;
        $product->price=$request->price;
        if($request->image instanceof UploadedFile){
            $ext=$request->image->guessExtension();
            $request->image->move('image/product', time().'.'.$ext);
            $product->image='image/product/'.time().'.'.$ext;
        }
        $product->description=$request->description;
        $product->category=$request->category;
        $product->save();
        return response()->json(['success'=>true]);
    }
    public function storeEdited(Request $request){
        $product=Product::find($request->id);
        if($request->name==$product->name){
            $validator=Validator::make([
                'price'=>$request->price,
                'category'=>$request->category
            ],
            [
                'price'=>'required|integer',
                'category'=>'not_in:undefined'
            ]);
            if($validator->fails()){
                return response()->json(['success'=>false, 'validationErrors'=>$validator->errors()->toArray()]);
            }
            $product->price=$request->price;
            $product->description=$request->description;
            $product->category=$request->category;
            if($request->image instanceof UploadedFile){
                if($product->image){
                    unlink($product->image);
                }
                $ext=$request->image->guessExtension();
                $request->image->move('image/product', time().'.'.$ext);
                $product->image='image/product/'.time().'.'.$ext;
            }
            $product->save();
            return response()->json(['success'=>true]);
        }
        $validator=Validator::make([
            'name'=>$request->name,
            'price'=>$request->price,
            'category'=>$request->category
        ],
        [
            'name'=>'required|unique:products,name',
            'price'=>'required|integer',
            'category'=>'not_in:undefined'
        ]);
        if($validator->fails()){
            return response()->json(['success'=>false, 'validationErrors'=>$validator->errors()->toArray()]);
        }
        $slug=Controller::generateSlug($request);
        $product=Product::where('slug', '=', $slug)->first();
        if(!$slug || $product){
            return response()->json(['success'=>false, 'slugError'=>'Введите другое имя.']);
        }
        $product=Product::find($request->id);
        $product->name=$request->name;
        $product->slug=$slug;
        $product->price=$request->price;
        if($request->image instanceof UploadedFile){
            if($product->image){
                unlink($product->image);
            }
            $ext=$request->image->guessExtension();
            $request->image->move('image/product', time().'.'.$ext);
            $product->image='image/product/'.time().'.'.$ext;
        }
        $product->description=$request->description;
        $product->category=$request->category;
        $product->save();
        return response()->json(['success'=>true]);
    }
    public function show($slug){
    	$product=Product::where('slug', '=', $slug)->first();
        $category=Product::where('products.slug', '=', $slug)->join('categories', 'categories.id', '=', 'products.category')->first();
        $latestProducts=Product::orderBy('id', 'desc')->take(3)->get();
        return view('product_slug', ['product'=>$product, 'category'=>$category, 'latestProducts'=>$latestProducts]);
    }
    public function edit($slug){
        $categories=Category::all();
    	$product=Product::where('slug', '=', $slug)->first();
        return view('adminPanel_product_edit', ['categories'=>$categories, 'product'=>$product]);
    }
    public function delete(Request $request){
        $product=Product::find($request->id);
        if($product->image){
            unlink($product->image);
        }
        $product->delete();
        return response()->json(['success'=>true]);
    }
    public function addToCart(Request $request){
        $request->session()->push('productsInCart', $request->id);
        return response()->json(['success'=>true]);
    }
    public function cart(Request $request){
        if($request->session()->has('productsInCart')){
            $ids=$request->session()->get('productsInCart');
            $productsInCart=[];
            $sum=0;
            foreach($ids as $id){
                $product=Product::where('id', '=', $id)->first();
                if($product){
                    $sum+=$product->price;
                    $productsInCart[]=$product;
                } 
            }
        }
        else{
            $productsInCart=[];
            $sum=0;
        }
        return view('cart', ['productsInCart'=>$productsInCart, 'sum'=>$sum]);
    }
    public function checkout(Request $request){
        $validator=Validator::make([
            'name'=>$request->name,
            'email'=>$request->email,
            'products'=>$request->ids,
            'sum'=>$request->sum
            ],[
            'name'=>'required',
            'email'=>'required|email',
            'products'=>'required|not_in:undefined',
            'sum'=>'required|integer|not_in:undefined'
        ]);
        if($validator->fails()){
            return response()->json(['success'=>false, 'validationErrors'=>$validator->errors()->toArray()]);
        }
        $ids=explode(',', $request->ids);
        $products='';
        foreach($ids as $id){
            $product=Product::find($id);
            $products.=$product->name.', ';
        }
        $products=rtrim($products, ', ');
        DB::insert('INSERT INTO orders (name, email, products, price) VALUES (?, ?, ?, ?)', [$request->name, $request->email, $products, $request->sum]);
        Mail::send('mail', ['name'=>$request->name, 'email'=>$request->email, 'products'=>$products, 'sum'=>$request->sum], function($m){
            $m->from('noreply@gamesmarket.localhost', 'GamesMarket');
            $admins=User::where('isadmin', '=', 1)->get();
            foreach($admins as $admin){
                $m->to($admin->email)->subject('Order Notification');
            }
        });
        $request->session()->forget('productsInCart');
        return response()->json(['success'=>true]); 
    }
}

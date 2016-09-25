<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use Validator;
use App\Category;

class CategoryController extends Controller
{
    public function create(){
    	return view('adminPanel_category_new');
    }
    public function storeCreated(Request $request){
    	$validator=Validator::make(
            [
                'name'=>$request->name
            ],
            [
                'name'=>'required|unique:categories,name'
            ]
        );
        if($validator->fails()){
            return response()->json(['success'=>false, 'validationError'=>$validator->errors()->toArray()]);
        }
        $slug=Controller::generateSlug($request);
        $category=Category::where('slug', '=', $slug)->first();
        if(!$slug || $category){
            return response()->json(['success'=>false, 'slugError'=>'Введите другое имя.']);
        }
        $category=new Category;
        $category->name=$request->name;
        $category->slug=$slug;
        $category->save();
        return response()->json(['success'=>true]);
    }
    public function storeEdited(Request $request){

        $category=Category::find($request->id);
        if($request->name==$category->name){
            return response()->json(['success'=>true]);
        }
        $validator=Validator::make(
            [
                'name'=>$request->name
            ],
            [
                'name'=>'required|unique:categories,name'
            ]
        );
        if($validator->fails()){
            return response()->json(['success'=>false, 'validationError'=>$validator->errors()->toArray()]);
        }
        $slug=Controller::generateSlug($request);
        $category=Category::where('slug', '=', $slug)->first();
        if(!$slug || $category){
            return response()->json(['success'=>false, 'slugError'=>'Введите другое имя.']);
        }
        $category=Category::find($request->id);
        $category->name=$request->name;
        $category->slug=$slug;
        $category->save();
        return response()->json(['success'=>true]);
    }
    public function show($slug){
    	$category=Category::where('slug', '=', $slug)->first();
        $productsInCategory=Category::where('categories.slug', '=', $slug)->join('products', 'categories.id', '=', 'products.category')->orderBy('products.id', 'desc')->get();
        return view('category_slug', ['category'=>$category, 'productsInCategory'=>$productsInCategory]);
    }
    public function edit($slug){
    	$category=Category::where('slug', '=', $slug)->first();
        return view('adminPanel_category_edit', ['category'=>$category]);
    }
    public function delete(Request $request){
        $products=Category::find($request->id)->products;
        foreach($products as $product){
            $product->delete();
        }
        $category=Category::where('id', '=', $request->id)->first();
        $category->delete();
        return response()->json(['success'=>true]);
    }
}

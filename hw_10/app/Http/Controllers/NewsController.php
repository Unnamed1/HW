<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use Validator;
use App\News;
use App\Product;

class NewsController extends Controller
{
    public function create(){
    	return view('adminPanel_news_new');
    }
    public function storeCreated(Request $request){
    	$validator=Validator::make([
            'name'=>$request->name,
            'excerpt'=>$request->excerpt,
            'description'=>$request->description
        ],
        [
            'name'=>'required|unique:news,name',
            'excerpt'=>'required',
            'description'=>'required'
        ]);
        if($validator->fails()){
            return response()->json(['success'=>false, 'validationErrors'=>$validator->errors()->toArray()]);
        }
        $slug=Controller::generateSlug($request);
        $pieceOfNews=News::where('slug', '=', $slug)->first();
        if(!$slug || $pieceOfNews){
            return response()->json(['success'=>false, 'slugError'=>'Введите другое имя.']);
        }
        $pieceOfNews=new News;
        $pieceOfNews->name=$request->name;
        $pieceOfNews->slug=$slug;
        $pieceOfNews->excerpt=$request->excerpt;
        $pieceOfNews->description=$request->description;
        $validator=Validator::make(['image'=>$request->image], ['image'=>'not_in:undefined']);
        if(!$validator->fails()){
            $ext=$request->image->guessExtension();
            $request->image->move('image/news', time().'.'.$ext);
            $pieceOfNews->image='image/news/'.time().'.'.$ext;
        }
        $pieceOfNews->published_at=date('Y-m-d H:i:s');
        $pieceOfNews->save();
        return response()->json(['success'=>true]);
    }
    public function storeEdited(Request $request){
        $pieceOfNews=News::find($request->id);
        if($request->name==$pieceOfNews->name){
            $validator=Validator::make([
                'excerpt'=>$request->excerpt,
                'description'=>$request->description
            ],
            [
                'excerpt'=>'required',
                'description'=>'required'
            ]);
            if($validator->fails()){
                return response()->json(['success'=>false, 'validationErrors'=>$validator->errors()->toArray()]);
            }
            $pieceOfNews->excerpt=$request->excerpt;
            $pieceOfNews->description=$request->description;
            $validator=Validator::make(['image'=>$request->image], ['image'=>'not_in:undefined']);
            if(!$validator->fails()){
                if($pieceOfNews->image){
                    unlink($pieceOfNews->image);
                }
                $ext=$request->image->guessExtension();
                $request->image->move('image/news', time().'.'.$ext);
                $pieceOfNews->image='image/news/'.time().'.'.$ext;
            }
            $pieceOfNews->save();
            return response()->json(['success'=>true]);
        }
        $validator=Validator::make([
            'name'=>$request->name,
            'excerpt'=>$request->excerpt,
            'description'=>$request->description
        ],
        [
            'name'=>'required|unique:news,name',
            'excerpt'=>'required',
            'description'=>'required'
        ]);
        if($validator->fails()){
            return response()->json(['success'=>false, 'validationErrors'=>$validator->errors()->toArray()]);
        }
        $slug=Controller::generateSlug($request);
        $pieceOfNews=News::where('slug', '=', $slug)->first();
        if(!$slug || $pieceOfNews){
            return response()->json(['success'=>false, 'slugError'=>'Введите другое имя.']);
        }
        $pieceOfNews=News::find($request->id);
        $pieceOfNews->name=$request->name;
        $pieceOfNews->slug=$slug;
        $pieceOfNews->excerpt=$request->excerpt;
        $pieceOfNews->description=$request->description;
        $validator=Validator::make(['image'=>$request->image], ['image'=>'not_in:undefined']);
        if(!$validator->fails()){
            if($pieceOfNews->image){
                unlink($pieceOfNews->image);
            }
            $ext=$request->image->guessExtension();
            $request->image->move('image/news', time().'.'.$ext);
            $pieceOfNews->image='image/news/'.time().'.'.$ext;
        }
        $pieceOfNews->save();
        return response()->json(['success'=>true]);
    }
    public function show($slug){
        $pieceOfNews=News::where('slug', '=', $slug)->first();
        $latestProducts=Product::orderBy('id', 'desc')->take(3)->get();
        return view('news_slug', ['pieceOfNews'=>$pieceOfNews, 'latestProducts'=>$latestProducts]);
    }
    public function edit($slug){
        $pieceOfNews=News::where('slug', '=', $slug)->first();
    	return view('adminPanel_news_edit', ['pieceOfNews'=>$pieceOfNews]);
    }
    public function delete(Request $request){
        $pieceOfNews=News::find($request->id);
        if($pieceOfNews->image){
            unlink($pieceOfNews->image);
        }
        $pieceOfNews->delete();
        return response()->json(['success'=>true]);
    }
}

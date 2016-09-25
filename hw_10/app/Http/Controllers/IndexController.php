<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use DB;
use App\Category;
use App\News;
use App\Product;

class IndexController extends Controller
{
	public function about(){
		$latestProducts=Product::orderBy('id', 'desc')->take(3)->get();
		return view('about', ['latestProducts'=>$latestProducts]);
	}
	public function product(Request $request){
    	$latestProducts=Product::orderBy('id', 'desc')->take(30)->get()->chunk(6);
        $numberOfLatestProducts=$latestProducts->count();
        if($request->has('page')){
            $page=$request->page;
            if($page>$numberOfLatestProducts || $page<1){
                return redirect('/');
            }
        }
        else{
            $page=1;
        }
        return view('index', ['numberOfLatestProducts'=>$numberOfLatestProducts, 'latestProducts'=>$latestProducts[$page-1], 'page'=>$page]);
    }
    public function news(){
    	$news=News::all()->reverse();
        return view('news', ['news'=>$news]);
    }
    public function admin(){
        $categories=Category::orderBy('id', 'desc')->pluck('slug', 'name');
        $news=News::orderBy('id', 'desc')->pluck('slug', 'name');
        $products=Product::orderBy('id', 'desc')->pluck('slug', 'name');
        return view('adminPanel', ['categories'=>$categories, 'news'=>$news, 'products'=>$products]);
    }
    public function orders(){
        $orders=DB::table('orders')->get();
        return view('orders', ['orders'=>$orders]);
    }
}

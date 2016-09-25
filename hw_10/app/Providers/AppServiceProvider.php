<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use Illuminate\Http\Request;
use App\Category;
use App\News;
use App\Product;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot(Request $request)
    {
        $categoriesMenu=Category::all()->pluck('slug', 'name');
        view()->share('categoriesMenu', $categoriesMenu);
        $latestNews=News::orderBy('id', 'desc')->take(3)->get();
        view()->share('latestNews', $latestNews);
        $randomProduct=Product::inRandomOrder()->first();
        view()->share('randomProduct', $randomProduct);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}

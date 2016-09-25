<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesResources;

use Illuminate\Http\Request;

class Controller extends BaseController
{
    use AuthorizesRequests, AuthorizesResources, DispatchesJobs, ValidatesRequests;

    public function generateSlug(Request $request){
    	$slug=mb_strtolower($request->name, 'UTF-8');
        $translit_arr=[
            'а' => 'a', 'б' => 'b', 'в' => 'v',
            'г' => 'g', 'д' => 'd', 'е' => 'e',
            'ё' => 'yo', 'ж' => 'zh', 'з' => 'z',
            'и' => 'i', 'й' => 'j', 'к' => 'k',
            'л' => 'l', 'м' => 'm', 'н' => 'n',
            'о' => 'o', 'п' => 'p', 'р' => 'r',
            'с' => 's', 'т' => 't', 'у' => 'u',
            'ф' => 'f', 'х' => 'h', 'ц' => 'c',
            'ч' => 'ch', 'ш' => 'sh', 'щ' => 'sch',
            'ъ' => '', 'ы' => 'y', 'ь' => '',
            'э' => 'e', 'ю' => 'yu', 'я' => 'ya',
        ];
        $slug_arr=preg_split('/[^\p{L}\p{N}\']+/u', $slug);
        $slug_arr_num=count($slug_arr);
        $last_slug_arr_num=$slug_arr_num-1;
        for($i=0; $i<$slug_arr_num; $i++){
            if($slug_arr[$i]=='' && $i==$last_slug_arr_num){
                array_pop($slug_arr);
                break;
            }
            $slug_arr[$i]=strtr($slug_arr[$i], $translit_arr);
        }
        $slug=implode($slug_arr, '_');
        if(strlen($slug)>255){
            return false;
        }
        return $slug;
    }
}

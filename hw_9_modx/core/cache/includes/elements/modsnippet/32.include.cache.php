<?php
$posts=[];
function getPosts($modx, $id, &$posts){
    $result=$modx->query("SELECT `id`, `pagetitle`, `content`, `publishedon`, `uri`, `isfolder` FROM `modx_site_content` WHERE `parent`={$id} ORDER BY `publishedon` DESC")->fetchAll(PDO::FETCH_ASSOC);
    if(!$result){
        return false;
    }
    foreach($result as $array){
        if($array['isfolder']==1){
            $res=getPosts($modx, $array['id'], $posts);
            foreach($res as $arr){
                $posts[]=$arr;
            }
        }
        else{
            return $result;
        }
    }
    return $posts;
}
if(!$result=getPosts($modx, $modx->resource->get('id'), $posts)){
    return 'В этой категории нет статей.';
}
foreach($result as $key=>$post){
    $publishedon[$key]=$post['publishedon'];
}
array_multisort($publishedon, SORT_DESC, $result);
$return='';
foreach($result as $post){
    $tmp=preg_split('/[^\p{L}\p{N}\']+/u', $post['content']);
    $limit=count($tmp)>=50?50:count($tmp);
    $post['content']='';
    for($i=0; $i<=$limit; $i++){
        $post['content'].=$tmp[$i].' ';
    }
    $post['content']=rtrim($post['content']);
    $return.='<div class="post-wrap">';
        $r=$modx->query("SELECT `value` FROM `modx_site_tmplvar_contentvalues` JOIN `modx_site_content` ON `modx_site_content`.`id`={$post['id']} AND `contentid`={$post['id']} AND `tmplvarid`=1")->fetch(PDO::FETCH_ASSOC);
        if($r){
            $return.='<div class="post-thumbnail">
                <img src="'.$r['value'].'" alt="Image поста" class="post-thumbnail__image">
            </div>';
        }
        $return.='<div class="post-content">';
            if($post['publishedon']!=0){
                $return.='<div class="post-content__post-info">
                    <div class="post-date">'.date('F d, Y', $post['publishedon']).'</div>
                </div>';
            }
            $return.='<div class="post-content__post-text">
                <div class="post-title">'.$post['pagetitle'].'</div>
                <p>'.$post['content'].'...</p>
            </div>
            <div class="post-content__post-control">
                <a href="'.$post['uri'].'" class="btn-read-post">Читать далее &gt;&gt;</a>
            </div>
        </div>
    </div>';
}
return $return;
return;

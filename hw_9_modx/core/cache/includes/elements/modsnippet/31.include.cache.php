<?php
$result=$modx->query('SELECT `modx_site_content`.`id`, `pagetitle`, `content`, `publishedon`, `uri`, `value` FROM `modx_site_content` JOIN `modx_site_tmplvar_contentvalues` ON `modx_site_content`.`id`=`contentid` WHERE `tmplvarid`=2 AND `value` LIKE \'%'.$_GET['tag'].'%\' ORDER BY `publishedon` DESC')->fetchAll(PDO::FETCH_ASSOC);
$return='';
foreach($result as $post){
    $tags=explode(',', $post['value']);
    $num=count($tags);
    for($i=0; $i<=$num; $i++){
        $tags[$i]=trim($tags[$i]);
        if($tags[$i]==$_GET['tag']){
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
    }
}
if($return==''){
    $return='Такого тега не существует.';
}
return $return;
return;

<?php
$result=$modx->query('SELECT `id`, `pagetitle`, `content`, `publishedon`, `uri` FROM `modx_site_content`WHERE `parent`!=0 AND `isfolder`=0 ORDER BY `publishedon` DESC');
$return='';
while($res=$result->fetch(PDO::FETCH_ASSOC)){
    $tmp=preg_split('/[^\p{L}\p{N}\']+/u', $res['content']);
    $limit=count($tmp)>=50?50:count($tmp);
    $res['content']='';
    for($i=0; $i<=$limit; $i++){
        $res['content'].=$tmp[$i].' ';
    }
    $res['content']=rtrim($res['content']);
    $return.='<div class="post-wrap">';
    $r=$modx->query("SELECT `value` FROM `modx_site_tmplvar_contentvalues` JOIN `modx_site_content` ON `modx_site_content`.`id`={$res['id']} AND `contentid`={$res['id']} AND `tmplvarid`=1")->fetch(PDO::FETCH_ASSOC);
    if($r){
        $return.='<div class="post-thumbnail">
                    <img src="'.$r['value'].'" alt="Image поста" class="post-thumbnail__image">
                </div>';
    }
    $return.='<div class="post-content">
                <div class="post-content__post-info">
                <div class="post-date">'.date('F d, Y', $res['publishedon']).'</div>
            </div>
            <div class="post-content__post-text">
                <div class="post-title">'
                    .$res['pagetitle'].
                '</div>'
                .$res['content'].'...'.
                '</div>
            <div class="post-content__post-control">
                <a href="'.$res['uri'].'"class="btn-read-post">Читать далее >></a></div>
            </div>
            </div>';
}
return $return;
return;

<?php  return array (
  'resourceClass' => 'modDocument',
  'resource' => 
  array (
    'id' => 2,
    'type' => 'document',
    'contentType' => 'text/html',
    'pagetitle' => 'Новости',
    'longtitle' => '',
    'description' => '',
    'alias' => 'news',
    'link_attributes' => '',
    'published' => 1,
    'pub_date' => 0,
    'unpub_date' => 0,
    'parent' => 0,
    'isfolder' => 1,
    'introtext' => '',
    'content' => '',
    'richtext' => 1,
    'template' => 5,
    'menuindex' => 1,
    'searchable' => 1,
    'cacheable' => 1,
    'createdby' => 1,
    'createdon' => 1473871686,
    'editedby' => 1,
    'editedon' => 1474053909,
    'deleted' => 0,
    'deletedon' => 0,
    'deletedby' => 0,
    'publishedon' => 1473940800,
    'publishedby' => 1,
    'menutitle' => '',
    'donthit' => 0,
    'privateweb' => 0,
    'privatemgr' => 0,
    'content_dispo' => 0,
    'hidemenu' => 0,
    'class_key' => 'modDocument',
    'context_key' => 'web',
    'content_type' => 1,
    'uri' => 'news/',
    'uri_override' => 0,
    'hide_children_in_tree' => 0,
    'show_in_tree' => 1,
    'properties' => NULL,
    '_content' => '<!DOCTYPE html>
<html lang="ru">
<head>
    <title>Новости</title>
    <base href="/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/assets/css/libs.min.css">
    <link rel="stylesheet" href="/assets/css/main.css">
    <link rel="stylesheet" href="/assets/css/media.css">
</head>
<body>
<div class="wrapper">
    <header class="main-header">
        <div class="top-header">
            <div class="top-header__wrap">
                <nav class="main-navigation">
                    <ul id="menu-main" class="nav-list">
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="http://localhost/">Главная</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="news/">Новости</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="offers/discounts/">Скидки</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="offers/otheroffers/">Ещё какие-то акции</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="about.html">О сервисе</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="bottom-header">
            <div class="search-form-wrap">
                <form class="search-form" action="search.html">
                    <input type="text" placeholder="Поиск..." class="search-form__input" name="s">
                    <button class="search-form__btn-search"><i class="icon icon-search"></i></button>
                </form>
            </div>
        </div>
    </header>
    <div class="main-content">
        <div class="content-wrapper">
            <div class="content">
                <h1 class="title-page">Категория \'Новости\'</h1>
                <div class="posts-list">
                    [[!getPosts category]]
                </div>
            </div>
            <div class="sidebar">
    <div class="sidebar__sidebar-item">
        <div class="sidebar-item__title">Теги</div>
        <div class="sidebar-item__content">
            <ul class="tags-list">
                [[!tagLister?&tpl=`tagLister sidebar tpl`]]
            </ul>
        </div>
    </div>
    <div class="sidebar__sidebar-item">
        <div class="sidebar-item__title">Категории</div>
        <div class="sidebar-item__content">
            <ul class="category-list">
                [[!Wayfinder?&startId=`0`&rowTpl=`Wayfinder sidebar rowTpl`&outerTpl=`Wayfinder sidebar outerTpl`&parentRowTpl=`Wayfinder sidebar parentRowTpl`&where=`[{"isfolder:=":1}]`]]
            </ul>
        </div>
    </div>
    <div class="sidebar__sidebar-item">
        <div class="sidebar-item__title">Календарь</div>
        <div class="sidebar-item__content">
            <ul class="category-list">
                [[!Archivist?&target=`21`&parents=`2,6`&setLocale=`true`&tpl=`Archivist sidebar tpl`&useFurls=`0`]]
            </ul>
        </div>
    </div>
</div>
        </div>
    </div>
<footer class="main-footer">
    <div class="content-footer">
        <div class="bottom-menu">
            <ul class="b-menu__list">
                <li class="b-menu__list__item"><a href="http://localhost/" class="b-menu__list__item__link">Главная</a></li>
                <li class="b-menu__list__item"><a href="about.html" class="b-menu__list__item__link">О сервисе</a></li>
            </ul>
        </div>
        <div class="copyright-wrap">
            <div class="copyright-text">Туристик<a href="#" class="copyright-text__link"> loftschool 2016</a></div>
        </div>
    </div>
</footer>
</div>
<!-- wrapper_end-->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
',
    '_isForward' => false,
  ),
  'contentType' => 
  array (
    'id' => 1,
    'name' => 'HTML',
    'description' => 'HTML content',
    'mime_type' => 'text/html',
    'file_extensions' => '.html',
    'headers' => NULL,
    'binary' => 0,
  ),
  'policyCache' => 
  array (
  ),
  'elementCache' => 
  array (
    '[[*pagetitle]]' => 'Новости',
    '[[~1]]' => 'http://localhost/',
    '[[~2]]' => 'news/',
    '[[~7]]' => 'offers/discounts/',
    '[[~14]]' => 'offers/otheroffers/',
    '[[~4]]' => 'about.html',
    '[[$header]]' => '<!DOCTYPE html>
<html lang="ru">
<head>
    <title>Новости</title>
    <base href="/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/assets/css/libs.min.css">
    <link rel="stylesheet" href="/assets/css/main.css">
    <link rel="stylesheet" href="/assets/css/media.css">
</head>
<body>
<div class="wrapper">
    <header class="main-header">
        <div class="top-header">
            <div class="top-header__wrap">
                <nav class="main-navigation">
                    <ul id="menu-main" class="nav-list">
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="http://localhost/">Главная</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="news/">Новости</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="offers/discounts/">Скидки</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="offers/otheroffers/">Ещё какие-то акции</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="about.html">О сервисе</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="bottom-header">
            <div class="search-form-wrap">
                <form class="search-form" action="search.html">
                    <input type="text" placeholder="Поиск..." class="search-form__input" name="s">
                    <button class="search-form__btn-search"><i class="icon icon-search"></i></button>
                </form>
            </div>
        </div>
    </header>
    <div class="main-content">
        <div class="content-wrapper">
            <div class="content">',
    '[[$sidebar]]' => '<div class="sidebar">
    <div class="sidebar__sidebar-item">
        <div class="sidebar-item__title">Теги</div>
        <div class="sidebar-item__content">
            <ul class="tags-list">
                [[!tagLister?&tpl=`tagLister sidebar tpl`]]
            </ul>
        </div>
    </div>
    <div class="sidebar__sidebar-item">
        <div class="sidebar-item__title">Категории</div>
        <div class="sidebar-item__content">
            <ul class="category-list">
                [[!Wayfinder?&startId=`0`&rowTpl=`Wayfinder sidebar rowTpl`&outerTpl=`Wayfinder sidebar outerTpl`&parentRowTpl=`Wayfinder sidebar parentRowTpl`&where=`[{"isfolder:=":1}]`]]
            </ul>
        </div>
    </div>
    <div class="sidebar__sidebar-item">
        <div class="sidebar-item__title">Календарь</div>
        <div class="sidebar-item__content">
            <ul class="category-list">
                [[!Archivist?&target=`21`&parents=`2,6`&setLocale=`true`&tpl=`Archivist sidebar tpl`&useFurls=`0`]]
            </ul>
        </div>
    </div>
</div>',
    '[[$footer]]' => '        </div>
    </div>
<footer class="main-footer">
    <div class="content-footer">
        <div class="bottom-menu">
            <ul class="b-menu__list">
                <li class="b-menu__list__item"><a href="http://localhost/" class="b-menu__list__item__link">Главная</a></li>
                <li class="b-menu__list__item"><a href="about.html" class="b-menu__list__item__link">О сервисе</a></li>
            </ul>
        </div>
        <div class="copyright-wrap">
            <div class="copyright-text">Туристик<a href="#" class="copyright-text__link"> loftschool 2016</a></div>
        </div>
    </div>
</footer>
</div>
<!-- wrapper_end-->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
',
  ),
  'sourceCache' => 
  array (
    'modChunk' => 
    array (
      'header' => 
      array (
        'fields' => 
        array (
          'id' => 1,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'header',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '<!DOCTYPE html>
<html lang="ru">
<head>
    <title>[[*pagetitle]]</title>
    <base href="/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/assets/css/libs.min.css">
    <link rel="stylesheet" href="/assets/css/main.css">
    <link rel="stylesheet" href="/assets/css/media.css">
</head>
<body>
<div class="wrapper">
    <header class="main-header">
        <div class="top-header">
            <div class="top-header__wrap">
                <nav class="main-navigation">
                    <ul id="menu-main" class="nav-list">
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="[[~1]]">Главная</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="[[~2]]">Новости</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="[[~7]]">Скидки</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="[[~14]]">Ещё какие-то акции</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="[[~4]]">О сервисе</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="bottom-header">
            <div class="search-form-wrap">
                <form class="search-form" action="search.html">
                    <input type="text" placeholder="Поиск..." class="search-form__input" name="s">
                    <button class="search-form__btn-search"><i class="icon icon-search"></i></button>
                </form>
            </div>
        </div>
    </header>
    <div class="main-content">
        <div class="content-wrapper">
            <div class="content">',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<!DOCTYPE html>
<html lang="ru">
<head>
    <title>[[*pagetitle]]</title>
    <base href="/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/assets/css/libs.min.css">
    <link rel="stylesheet" href="/assets/css/main.css">
    <link rel="stylesheet" href="/assets/css/media.css">
</head>
<body>
<div class="wrapper">
    <header class="main-header">
        <div class="top-header">
            <div class="top-header__wrap">
                <nav class="main-navigation">
                    <ul id="menu-main" class="nav-list">
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="[[~1]]">Главная</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="[[~2]]">Новости</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="[[~7]]">Скидки</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="[[~14]]">Ещё какие-то акции</a>
                        </li>
                        <li class="nav-list__nav-item">
                            <a class="nav-list__nav-item__nav-link" href="[[~4]]">О сервисе</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="bottom-header">
            <div class="search-form-wrap">
                <form class="search-form" action="search.html">
                    <input type="text" placeholder="Поиск..." class="search-form__input" name="s">
                    <button class="search-form__btn-search"><i class="icon icon-search"></i></button>
                </form>
            </div>
        </div>
    </header>
    <div class="main-content">
        <div class="content-wrapper">
            <div class="content">',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'sources.modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'sidebar' => 
      array (
        'fields' => 
        array (
          'id' => 3,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'sidebar',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '<div class="sidebar">
    <div class="sidebar__sidebar-item">
        <div class="sidebar-item__title">Теги</div>
        <div class="sidebar-item__content">
            <ul class="tags-list">
                [[!tagLister?&tpl=`tagLister sidebar tpl`]]
            </ul>
        </div>
    </div>
    <div class="sidebar__sidebar-item">
        <div class="sidebar-item__title">Категории</div>
        <div class="sidebar-item__content">
            <ul class="category-list">
                [[!Wayfinder?&startId=`0`&rowTpl=`Wayfinder sidebar rowTpl`&outerTpl=`Wayfinder sidebar outerTpl`&parentRowTpl=`Wayfinder sidebar parentRowTpl`&where=`[{"isfolder:=":1}]`]]
            </ul>
        </div>
    </div>
    <div class="sidebar__sidebar-item">
        <div class="sidebar-item__title">Календарь</div>
        <div class="sidebar-item__content">
            <ul class="category-list">
                [[!Archivist?&target=`21`&parents=`2,6`&setLocale=`true`&tpl=`Archivist sidebar tpl`&useFurls=`0`]]
            </ul>
        </div>
    </div>
</div>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<div class="sidebar">
    <div class="sidebar__sidebar-item">
        <div class="sidebar-item__title">Теги</div>
        <div class="sidebar-item__content">
            <ul class="tags-list">
                [[!tagLister?&tpl=`tagLister sidebar tpl`]]
            </ul>
        </div>
    </div>
    <div class="sidebar__sidebar-item">
        <div class="sidebar-item__title">Категории</div>
        <div class="sidebar-item__content">
            <ul class="category-list">
                [[!Wayfinder?&startId=`0`&rowTpl=`Wayfinder sidebar rowTpl`&outerTpl=`Wayfinder sidebar outerTpl`&parentRowTpl=`Wayfinder sidebar parentRowTpl`&where=`[{"isfolder:=":1}]`]]
            </ul>
        </div>
    </div>
    <div class="sidebar__sidebar-item">
        <div class="sidebar-item__title">Календарь</div>
        <div class="sidebar-item__content">
            <ul class="category-list">
                [[!Archivist?&target=`21`&parents=`2,6`&setLocale=`true`&tpl=`Archivist sidebar tpl`&useFurls=`0`]]
            </ul>
        </div>
    </div>
</div>',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'sources.modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'footer' => 
      array (
        'fields' => 
        array (
          'id' => 2,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'footer',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '        </div>
    </div>
<footer class="main-footer">
    <div class="content-footer">
        <div class="bottom-menu">
            <ul class="b-menu__list">
                <li class="b-menu__list__item"><a href="[[~1]]" class="b-menu__list__item__link">Главная</a></li>
                <li class="b-menu__list__item"><a href="[[~4]]" class="b-menu__list__item__link">О сервисе</a></li>
            </ul>
        </div>
        <div class="copyright-wrap">
            <div class="copyright-text">Туристик<a href="#" class="copyright-text__link"> loftschool 2016</a></div>
        </div>
    </div>
</footer>
</div>
<!-- wrapper_end-->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '        </div>
    </div>
<footer class="main-footer">
    <div class="content-footer">
        <div class="bottom-menu">
            <ul class="b-menu__list">
                <li class="b-menu__list__item"><a href="[[~1]]" class="b-menu__list__item__link">Главная</a></li>
                <li class="b-menu__list__item"><a href="[[~4]]" class="b-menu__list__item__link">О сервисе</a></li>
            </ul>
        </div>
        <div class="copyright-wrap">
            <div class="copyright-text">Туристик<a href="#" class="copyright-text__link"> loftschool 2016</a></div>
        </div>
    </div>
</footer>
</div>
<!-- wrapper_end-->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'sources.modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
    ),
    'modSnippet' => 
    array (
      'getPosts category' => 
      array (
        'fields' => 
        array (
          'id' => 32,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'getPosts category',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '$posts=[];
function getPosts($modx, $id, &$posts){
    $result=$modx->query("SELECT `id`, `pagetitle`, `content`, `publishedon`, `uri`, `isfolder` FROM `modx_site_content` WHERE `parent`={$id} ORDER BY `publishedon` DESC")->fetchAll(PDO::FETCH_ASSOC);
    if(!$result){
        return false;
    }
    foreach($result as $array){
        if($array[\'isfolder\']==1){
            $res=getPosts($modx, $array[\'id\'], $posts);
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
if(!$result=getPosts($modx, $modx->resource->get(\'id\'), $posts)){
    return \'В этой категории нет статей.\';
}
foreach($result as $key=>$post){
    $publishedon[$key]=$post[\'publishedon\'];
}
array_multisort($publishedon, SORT_DESC, $result);
$return=\'\';
foreach($result as $post){
    $tmp=preg_split(\'/[^\\p{L}\\p{N}\\\']+/u\', $post[\'content\']);
    $limit=count($tmp)>=50?50:count($tmp);
    $post[\'content\']=\'\';
    for($i=0; $i<=$limit; $i++){
        $post[\'content\'].=$tmp[$i].\' \';
    }
    $post[\'content\']=rtrim($post[\'content\']);
    $return.=\'<div class="post-wrap">\';
        $r=$modx->query("SELECT `value` FROM `modx_site_tmplvar_contentvalues` JOIN `modx_site_content` ON `modx_site_content`.`id`={$post[\'id\']} AND `contentid`={$post[\'id\']} AND `tmplvarid`=1")->fetch(PDO::FETCH_ASSOC);
        if($r){
            $return.=\'<div class="post-thumbnail">
                <img src="\'.$r[\'value\'].\'" alt="Image поста" class="post-thumbnail__image">
            </div>\';
        }
        $return.=\'<div class="post-content">\';
            if($post[\'publishedon\']!=0){
                $return.=\'<div class="post-content__post-info">
                    <div class="post-date">\'.date(\'F d, Y\', $post[\'publishedon\']).\'</div>
                </div>\';
            }
            $return.=\'<div class="post-content__post-text">
                <div class="post-title">\'.$post[\'pagetitle\'].\'</div>
                <p>\'.$post[\'content\'].\'...</p>
            </div>
            <div class="post-content__post-control">
                <a href="\'.$post[\'uri\'].\'" class="btn-read-post">Читать далее &gt;&gt;</a>
            </div>
        </div>
    </div>\';
}
return $return;',
          'locked' => false,
          'properties' => 
          array (
          ),
          'moduleguid' => '',
          'static' => false,
          'static_file' => '',
          'content' => '$posts=[];
function getPosts($modx, $id, &$posts){
    $result=$modx->query("SELECT `id`, `pagetitle`, `content`, `publishedon`, `uri`, `isfolder` FROM `modx_site_content` WHERE `parent`={$id} ORDER BY `publishedon` DESC")->fetchAll(PDO::FETCH_ASSOC);
    if(!$result){
        return false;
    }
    foreach($result as $array){
        if($array[\'isfolder\']==1){
            $res=getPosts($modx, $array[\'id\'], $posts);
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
if(!$result=getPosts($modx, $modx->resource->get(\'id\'), $posts)){
    return \'В этой категории нет статей.\';
}
foreach($result as $key=>$post){
    $publishedon[$key]=$post[\'publishedon\'];
}
array_multisort($publishedon, SORT_DESC, $result);
$return=\'\';
foreach($result as $post){
    $tmp=preg_split(\'/[^\\p{L}\\p{N}\\\']+/u\', $post[\'content\']);
    $limit=count($tmp)>=50?50:count($tmp);
    $post[\'content\']=\'\';
    for($i=0; $i<=$limit; $i++){
        $post[\'content\'].=$tmp[$i].\' \';
    }
    $post[\'content\']=rtrim($post[\'content\']);
    $return.=\'<div class="post-wrap">\';
        $r=$modx->query("SELECT `value` FROM `modx_site_tmplvar_contentvalues` JOIN `modx_site_content` ON `modx_site_content`.`id`={$post[\'id\']} AND `contentid`={$post[\'id\']} AND `tmplvarid`=1")->fetch(PDO::FETCH_ASSOC);
        if($r){
            $return.=\'<div class="post-thumbnail">
                <img src="\'.$r[\'value\'].\'" alt="Image поста" class="post-thumbnail__image">
            </div>\';
        }
        $return.=\'<div class="post-content">\';
            if($post[\'publishedon\']!=0){
                $return.=\'<div class="post-content__post-info">
                    <div class="post-date">\'.date(\'F d, Y\', $post[\'publishedon\']).\'</div>
                </div>\';
            }
            $return.=\'<div class="post-content__post-text">
                <div class="post-title">\'.$post[\'pagetitle\'].\'</div>
                <p>\'.$post[\'content\'].\'...</p>
            </div>
            <div class="post-content__post-control">
                <a href="\'.$post[\'uri\'].\'" class="btn-read-post">Читать далее &gt;&gt;</a>
            </div>
        </div>
    </div>\';
}
return $return;',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'sources.modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'tagLister' => 
      array (
        'fields' => 
        array (
          'id' => 25,
          'source' => 0,
          'property_preprocess' => false,
          'name' => 'tagLister',
          'description' => 'A simple tag listing snippet that grabs tags from a TV value.',
          'editor_type' => 0,
          'category' => 4,
          'cache_type' => 0,
          'snippet' => '/**
 * tagLister
 *
 * Copyright 2010 by Shaun McCormick <shaun@modxcms.com>
 *
 * This file is part of tagLister, a simple tag listing snippet for MODx
 * Revolution.
 *
 * tagLister is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * tagLister is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * tagLister; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package taglister
 */
/**
 * tagLister snippet
 *
 * @var modX $modx
 * @var TagLister $tagLister
 * @var array $scriptProperties
 *
 * @package taglister
 */
$tagLister = $modx->getService(\'taglister\',\'TagLister\',$modx->getOption(\'taglister.core_path\',null,$modx->getOption(\'core_path\').\'components/taglister/\').\'model/taglister/\',$scriptProperties);
if (!($tagLister instanceof TagLister)) return \'\';
$modx->lexicon->load(\'taglister:default\');

/* setup default properties */
$tpl = $modx->getOption(\'tpl\',$scriptProperties,\'tag\');
$tv = $modx->getOption(\'tv\',$scriptProperties,\'tags\');
$tvDelimiter = $modx->getOption(\'tvDelimiter\',$scriptProperties,\',\');
$target = $modx->getOption(\'target\',$scriptProperties,1);
$tagVar = $modx->getOption(\'tagVar\',$scriptProperties,\'tag\');
$tagKeyVar = $modx->getOption(\'tagKeyVar\',$scriptProperties,\'key\');
$limit = $modx->getOption(\'limit\',$scriptProperties,10);
$sortBy = strtolower($modx->getOption(\'sortBy\',$scriptProperties,\'count\'));
$sortDir = strtoupper($modx->getOption(\'sortDir\',$scriptProperties,\'ASC\'));
$cls = $modx->getOption(\'cls\',$scriptProperties,\'\');
$altCls = $modx->getOption(\'altCls\',$scriptProperties,\'\');
$firstCls = $modx->getOption(\'firstCls\',$scriptProperties,\'\');
$lastCls = $modx->getOption(\'lastCls\',$scriptProperties,\'\');
$activeCls = $modx->getOption(\'activeCls\',$scriptProperties,\'\');
$activeTag = isset($_REQUEST[$tagVar]) ? $modx->stripTags(urldecode($_REQUEST[$tagVar])) : \'\';
$activeKey = isset($_REQUEST[$tagKeyVar]) ? $modx->stripTags(urldecode($_REQUEST[$tagKeyVar])) : \'\';
$all = $modx->getOption(\'all\',$scriptProperties,false);
$toLower = $modx->getOption(\'toLower\',$scriptProperties,false);
$weights = $modx->getOption(\'weights\',$scriptProperties,0);
$weightCls = $modx->getOption(\'weightCls\',$scriptProperties,\'\');
$useTagFurl = $modx->getOption(\'useTagFurl\',$scriptProperties,false);
$furlKey = $modx->getOption(\'furlKey\',$scriptProperties,\'tags\');


/* get TV values */
$c = $modx->newQuery(\'modTemplateVarResource\');
$c->innerJoin(\'modTemplateVar\',\'TemplateVar\');
$c->innerJoin(\'modResource\',\'Resource\');
$c->leftJoin(\'modUser\',\'CreatedBy\',\'CreatedBy.id = Resource.createdby\');
$c->leftJoin(\'modUser\',\'PublishedBy\',\'PublishedBy.id = Resource.publishedby\');
$c->leftJoin(\'modUser\',\'EditedBy\',\'EditedBy.id = Resource.editedby\');
$tvPk = (int)$tv;
if (!empty($tvPk)) {
    $c->where(array(\'TemplateVar.id\' => $tvPk));
} else {
    $c->where(array(\'TemplateVar.name\' => $tv));
}
/* parents support */
$parents = isset($parents) ? explode(\',\', $parents) : array();
if (!empty($parents)) {
    $depth = isset($depth) ? (integer) $depth : 10;
    $children = array();
    foreach ($parents as $parent) {
        $kids = $modx->getChildIds($parent,$depth);
        if (!empty($kids)) {
            $children = array_merge($children,$kids);
        }
    }
    if (!empty($children)) {
        $children = array_unique($children);
        $parents = array_merge($parents,$children);
    }
    $parents = array_unique($parents);
    if (!empty($parents)) {
        $c->where(array(
            \'Resource.id:IN\' => $parents,
        ));
    }
}
if (!$modx->getOption(\'includeDeleted\',$scriptProperties,false)) {
    $c->where(array(\'Resource.deleted\' => 0));
}
if (!$modx->getOption(\'includeUnpublished\',$scriptProperties,false)) {
    $c->where(array(\'Resource.published\' => 1));
}
/* json where support */
$where = $modx->getOption(\'where\',$scriptProperties,\'\');
if (!empty($where)) {
    $where = $modx->fromJSON($where);
    if (is_array($where) && !empty($where)) {
        $c->where($where);
    }
}
if ($sortBy == \'publishedon\') {
    $c->sortby(\'Resource.publishedon\',$sortDir);
} else if (in_array($sortBy,array(\'rand\',\'random\',\'rand()\'))) {
    $c->sortby(\'RAND()\',\'\');
}
$tags = $modx->getCollection(\'modTemplateVarResource\',$c);

/* parse TV values */
$output = array();
$tagList = array();
$encoding = $modx->getOption(\'modx_charset\',$scriptProperties,\'UTF-8\');
$useMultibyte = $modx->getOption(\'use_multibyte\',$scriptProperties,false);
/** @var modTemplateVarResource $tag */
foreach ($tags as $tag) {
   $v = $tag->get(\'value\');
   $vs = explode($tvDelimiter,$v);
   foreach ($vs as $key) {
      $key = trim($key);
      if (empty($key)) continue;
      if ($toLower) { /* allow for case-insensitive filtering */
          $key = $useMultibyte ? mb_strtolower($key,$encoding) : strtolower($key);
      }
      /* increment tag count */
      if (empty($tagList[$key])) {
         $tagList[$key] = 1;
      } else { $tagList[$key]++; }
   }
}

/* sort */
switch ($sortBy.\'-\'.$sortDir) {
    case \'publishedon-DESC\': case \'publishedon-ASC\': break;
    case \'tag-ASC\': ksort($tagList); break;
    case \'tag-DESC\': krsort($tagList); break;
    case \'count-DESC\': asort($tagList); break;
    case \'count-ASC\': default: arsort($tagList); break;
    case \'rand-ASC\': case \'random-ASC\': case \'rand()-asc\': $tagList = $tagLister->ashuffle($tagList); break;
}

/* iterate */
$totalTags = 0;
$i = $all ? 1 : 0;
foreach ($tagList as $tag => $count) {
    if ($i >= $limit) break;
    $tagCls = $cls.((!empty($altCls) && $i % 2)? \' \'.$altCls : \'\');
    if (!empty($firstCls) && $i == 0) $tagCls .= \' \'.$firstCls;
    if (!empty($lastCls) && ($i+1 >= $limit || $i == $count)) $tagCls .= \' \'.$lastCls;
    /* if tag is currently being viewed, mark as active */
    if (!empty($activeCls) && $tag==$activeTag && (empty($activeKey) || $tv==$activeKey)) $tagCls .= \' \'.$activeCls;
    /* handle weighting for css */
    if (!empty($weights) && !empty($weightCls)) $tagCls .= \' \'.$weightCls.ceil($count / (max($tagList) / $weights));

    $tagArray = array(
        \'tag\' => $tag,
        \'tagVar\' => $tagVar,
        \'tagKey\' => $tv,
        \'tagKeyVar\' => $tagKeyVar,
        \'count\' => $count,
        \'target\' => $target,
        \'cls\' => $tagCls,
        \'idx\' => $i,
    );
    $tagParams = array();
    if (empty($useTagFurl)) {
        $tagParams[$tagVar] = $tag;
        $tagParams[$tagKeyVar] = $tv;
    }
    $tagArray[\'url\'] = $modx->makeUrl($target,\'\',$tagParams);
    if (!empty($useTagFurl)) {
        $tagArray[\'url\'] = rtrim($tagArray[\'url\'],\'/\').\'/\'.(!empty($furlKey) ? $furlKey : $tv).\'/\'.urlencode($tag);
    }

    $output[] = $tagLister->getChunk($tpl,$tagArray);
    $totalTags += $count;
    $i++;
}

if ($all) {
    $allTpl = $modx->getOption(\'allTpl\',$scriptProperties,\'all\');
    $allChunk = $tagLister->getChunk($allTpl,array(
        \'tag\' => !empty($scriptProperties[\'allText\']) ? $scriptProperties[\'allText\'] : $modx->lexicon(\'all_tags\'),
        \'tagVar\' => $tagVar,
        \'tagKey\' => $tv,
        \'tagKeyVar\' => $tagKeyVar,
        \'count\' => $totalTags,
        \'target\' => $target,
        \'cls\' => $cls,
        \'url\' => $useTagFurl ? $modx->makeUrl($target).$tv.\'/\' : $modx->makeUrl($target,\'\',array(
            $tagVar => \'\',
            $tagKeyVar => $tv,
        )),
    ));
    if ($modx->getOption(\'allPosition\',$scriptProperties,\'B\') == \'T\') {
        array_unshift($output,$allChunk);
    } else {
        array_push($output,$allChunk);
    }
}

/* output */
$outputSeparator = $modx->getOption(\'outputSeparator\',$scriptProperties,"\\n");
$output = implode($outputSeparator,$output);
$toPlaceholder = $modx->getOption(\'toPlaceholder\',$scriptProperties,false);
if (!empty($toPlaceholder)) {
    $modx->setPlaceholder($toPlaceholder,$output);
    return \'\';
}
return $output;',
          'locked' => false,
          'properties' => 
          array (
            'tpl' => 
            array (
              'name' => 'tpl',
              'desc' => 'prop_taglister.tpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'tag',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Name of a Chunk that will be used for each result.',
              'area_trans' => '',
            ),
            'tv' => 
            array (
              'name' => 'tv',
              'desc' => 'prop_taglister.tv_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'tags',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'The name or ID of the TV being used for tags.',
              'area_trans' => '',
            ),
            'tvDelimiter' => 
            array (
              'name' => 'tvDelimiter',
              'desc' => 'prop_taglister.tvdelimiter_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => ',',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'The delimiter being used between tags in the TV. Usually a comma, sometimes a space.',
              'area_trans' => '',
            ),
            'target' => 
            array (
              'name' => 'target',
              'desc' => 'prop_taglister.target_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'The target Resource to point the tag links to. Will default to the current Resource.',
              'area_trans' => '',
            ),
            'tagVar' => 
            array (
              'name' => 'tagVar',
              'desc' => 'prop_taglister.tagvar_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'tag',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'The REQUEST var of the tag value. Used in the links generated for each tag result.',
              'area_trans' => '',
            ),
            'tagKeyVar' => 
            array (
              'name' => 'tagKeyVar',
              'desc' => 'prop_taglister.tagkeyvar_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'key',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'The REQUEST var of the tv name. Used in the links generated for each tag result',
              'area_trans' => '',
            ),
            'sortBy' => 
            array (
              'name' => 'sortBy',
              'desc' => 'prop_taglister.sortby_desc',
              'type' => 'list',
              'options' => 
              array (
                0 => 
                array (
                  'text' => 'count',
                  'value' => 'count',
                  'name' => 'Count',
                ),
                1 => 
                array (
                  'text' => 'tag',
                  'value' => 'tag',
                  'name' => 'Tag',
                ),
              ),
              'value' => 'count',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Field to sort by. Defaults to count. Can be either tag or count.',
              'area_trans' => '',
            ),
            'sortDir' => 
            array (
              'name' => 'sortDir',
              'desc' => 'prop_taglister.sortdir_desc',
              'type' => 'list',
              'options' => 
              array (
                0 => 
                array (
                  'text' => 'ascending',
                  'vaue' => 'ASC',
                  'name' => 'Ascending',
                ),
                1 => 
                array (
                  'text' => 'descending',
                  'value' => 'DESC',
                  'name' => 'Descending',
                ),
              ),
              'value' => 'ASC',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Order which to sort by. Defaults to ASC.',
              'area_trans' => '',
            ),
            'limit' => 
            array (
              'name' => 'limit',
              'desc' => 'prop_taglister.limit_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 10,
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Limits the number of resources returned. Defaults to 10.',
              'area_trans' => '',
            ),
            'parents' => 
            array (
              'name' => 'parents',
              'desc' => 'prop_taglister.parents_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Optional. Comma-delimited list of ids serving as parents.',
              'area_trans' => '',
            ),
            'depth' => 
            array (
              'name' => 'depth',
              'desc' => 'prop_taglister.depth_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 10,
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Integer value indicating depth to search for resources from each parent. Defaults to 10.',
              'area_trans' => '',
            ),
            'includeDeleted' => 
            array (
              'name' => 'includeDeleted',
              'desc' => 'prop_taglister.includedeleted_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => false,
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Include tags from deleted Resources in the results.',
              'area_trans' => '',
            ),
            'includeUnpublished' => 
            array (
              'name' => 'includeUnpublished',
              'desc' => 'prop_taglister.includeunpublished_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => false,
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Include tags from unpublished Resources in the results.',
              'area_trans' => '',
            ),
            'where' => 
            array (
              'name' => 'where',
              'desc' => 'prop_taglister.where_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'A criteria in JSON format for filtering results.',
              'area_trans' => '',
            ),
            'cls' => 
            array (
              'name' => 'cls',
              'desc' => 'prop_taglister.cls_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'tl-tag',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Optional. A CSS class to add to each row. If empty will ignore.',
              'area_trans' => '',
            ),
            'altCls' => 
            array (
              'name' => 'altCls',
              'desc' => 'prop_taglister.altcls_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'tl-tag-alt',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Optional. A CSS class to add to each alternate row. If empty will ignore.',
              'area_trans' => '',
            ),
            'firstCls' => 
            array (
              'name' => 'firstCls',
              'desc' => 'prop_taglister.firstcls_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Optional. A CSS class to add to the first row. If empty will ignore.',
              'area_trans' => '',
            ),
            'lastCls' => 
            array (
              'name' => 'lastCls',
              'desc' => 'prop_taglister.lastcls_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Optional. A CSS class to add to the last row. If empty will ignore.',
              'area_trans' => '',
            ),
            'toLower' => 
            array (
              'name' => 'toLower',
              'desc' => 'prop_taglister.tolower_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => false,
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Optional. If set to true, will allow case-insensitive tag listing.',
              'area_trans' => '',
            ),
            'all' => 
            array (
              'name' => 'all',
              'desc' => 'prop_taglister.all_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => false,
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Whether or not to show an "All Tags" result.',
              'area_trans' => '',
            ),
            'allTpl' => 
            array (
              'name' => 'allTpl',
              'desc' => 'prop_taglister.alltpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'all',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'The chunk for showing the all tags link.',
              'area_trans' => '',
            ),
            'allPosition' => 
            array (
              'name' => 'allPosition',
              'desc' => 'prop_taglister.allposition_desc',
              'type' => 'list',
              'options' => 
              array (
                0 => 
                array (
                  'text' => 'bottom',
                  'value' => 'B',
                  'name' => 'Bottom',
                ),
                1 => 
                array (
                  'text' => 'top',
                  'value' => 'T',
                  'name' => 'Top',
                ),
              ),
              'value' => 'B',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Whether or not the all tags link should be at the top (T) or bottom (B) of the results.',
              'area_trans' => '',
            ),
            'allText' => 
            array (
              'name' => 'allText',
              'desc' => 'prop_taglister.alltext_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'The text for the all tags link. Defaults to "All Tags".',
              'area_trans' => '',
            ),
            'toPlaceholder' => 
            array (
              'name' => 'toPlaceholder',
              'desc' => 'prop_taglister.toplaceholder_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'If set, will set the output of this snippet to this placeholder rather than output it.',
              'area_trans' => '',
            ),
            'outputSeparator' => 
            array (
              'name' => 'outputSeparator',
              'desc' => 'prop_taglister.outputseparator_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '
',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'The separator for output for each result.',
              'area_trans' => '',
            ),
            'activeCls' => 
            array (
              'name' => 'activeCls',
              'desc' => 'prop_taglister.activecls_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Optional. A CSS class to add to the active tag. If empty will ignore.',
              'area_trans' => '',
            ),
            'weightCls' => 
            array (
              'name' => 'weightCls',
              'desc' => 'prop_taglister.weightcls_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'tl-tag-weight',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Optional. A CSS class to prefix to each weight. If empty will disable weights.',
              'area_trans' => '',
            ),
            'weights' => 
            array (
              'name' => 'weights',
              'desc' => 'prop_taglister.weights_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '5',
              'lexicon' => 'taglister:properties',
              'area' => '',
              'desc_trans' => 'Optional. The number of weights to calculate. 0 or empty will disable weights.',
              'area_trans' => '',
            ),
          ),
          'moduleguid' => '',
          'static' => false,
          'static_file' => '',
          'content' => '/**
 * tagLister
 *
 * Copyright 2010 by Shaun McCormick <shaun@modxcms.com>
 *
 * This file is part of tagLister, a simple tag listing snippet for MODx
 * Revolution.
 *
 * tagLister is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * tagLister is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * tagLister; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package taglister
 */
/**
 * tagLister snippet
 *
 * @var modX $modx
 * @var TagLister $tagLister
 * @var array $scriptProperties
 *
 * @package taglister
 */
$tagLister = $modx->getService(\'taglister\',\'TagLister\',$modx->getOption(\'taglister.core_path\',null,$modx->getOption(\'core_path\').\'components/taglister/\').\'model/taglister/\',$scriptProperties);
if (!($tagLister instanceof TagLister)) return \'\';
$modx->lexicon->load(\'taglister:default\');

/* setup default properties */
$tpl = $modx->getOption(\'tpl\',$scriptProperties,\'tag\');
$tv = $modx->getOption(\'tv\',$scriptProperties,\'tags\');
$tvDelimiter = $modx->getOption(\'tvDelimiter\',$scriptProperties,\',\');
$target = $modx->getOption(\'target\',$scriptProperties,1);
$tagVar = $modx->getOption(\'tagVar\',$scriptProperties,\'tag\');
$tagKeyVar = $modx->getOption(\'tagKeyVar\',$scriptProperties,\'key\');
$limit = $modx->getOption(\'limit\',$scriptProperties,10);
$sortBy = strtolower($modx->getOption(\'sortBy\',$scriptProperties,\'count\'));
$sortDir = strtoupper($modx->getOption(\'sortDir\',$scriptProperties,\'ASC\'));
$cls = $modx->getOption(\'cls\',$scriptProperties,\'\');
$altCls = $modx->getOption(\'altCls\',$scriptProperties,\'\');
$firstCls = $modx->getOption(\'firstCls\',$scriptProperties,\'\');
$lastCls = $modx->getOption(\'lastCls\',$scriptProperties,\'\');
$activeCls = $modx->getOption(\'activeCls\',$scriptProperties,\'\');
$activeTag = isset($_REQUEST[$tagVar]) ? $modx->stripTags(urldecode($_REQUEST[$tagVar])) : \'\';
$activeKey = isset($_REQUEST[$tagKeyVar]) ? $modx->stripTags(urldecode($_REQUEST[$tagKeyVar])) : \'\';
$all = $modx->getOption(\'all\',$scriptProperties,false);
$toLower = $modx->getOption(\'toLower\',$scriptProperties,false);
$weights = $modx->getOption(\'weights\',$scriptProperties,0);
$weightCls = $modx->getOption(\'weightCls\',$scriptProperties,\'\');
$useTagFurl = $modx->getOption(\'useTagFurl\',$scriptProperties,false);
$furlKey = $modx->getOption(\'furlKey\',$scriptProperties,\'tags\');


/* get TV values */
$c = $modx->newQuery(\'modTemplateVarResource\');
$c->innerJoin(\'modTemplateVar\',\'TemplateVar\');
$c->innerJoin(\'modResource\',\'Resource\');
$c->leftJoin(\'modUser\',\'CreatedBy\',\'CreatedBy.id = Resource.createdby\');
$c->leftJoin(\'modUser\',\'PublishedBy\',\'PublishedBy.id = Resource.publishedby\');
$c->leftJoin(\'modUser\',\'EditedBy\',\'EditedBy.id = Resource.editedby\');
$tvPk = (int)$tv;
if (!empty($tvPk)) {
    $c->where(array(\'TemplateVar.id\' => $tvPk));
} else {
    $c->where(array(\'TemplateVar.name\' => $tv));
}
/* parents support */
$parents = isset($parents) ? explode(\',\', $parents) : array();
if (!empty($parents)) {
    $depth = isset($depth) ? (integer) $depth : 10;
    $children = array();
    foreach ($parents as $parent) {
        $kids = $modx->getChildIds($parent,$depth);
        if (!empty($kids)) {
            $children = array_merge($children,$kids);
        }
    }
    if (!empty($children)) {
        $children = array_unique($children);
        $parents = array_merge($parents,$children);
    }
    $parents = array_unique($parents);
    if (!empty($parents)) {
        $c->where(array(
            \'Resource.id:IN\' => $parents,
        ));
    }
}
if (!$modx->getOption(\'includeDeleted\',$scriptProperties,false)) {
    $c->where(array(\'Resource.deleted\' => 0));
}
if (!$modx->getOption(\'includeUnpublished\',$scriptProperties,false)) {
    $c->where(array(\'Resource.published\' => 1));
}
/* json where support */
$where = $modx->getOption(\'where\',$scriptProperties,\'\');
if (!empty($where)) {
    $where = $modx->fromJSON($where);
    if (is_array($where) && !empty($where)) {
        $c->where($where);
    }
}
if ($sortBy == \'publishedon\') {
    $c->sortby(\'Resource.publishedon\',$sortDir);
} else if (in_array($sortBy,array(\'rand\',\'random\',\'rand()\'))) {
    $c->sortby(\'RAND()\',\'\');
}
$tags = $modx->getCollection(\'modTemplateVarResource\',$c);

/* parse TV values */
$output = array();
$tagList = array();
$encoding = $modx->getOption(\'modx_charset\',$scriptProperties,\'UTF-8\');
$useMultibyte = $modx->getOption(\'use_multibyte\',$scriptProperties,false);
/** @var modTemplateVarResource $tag */
foreach ($tags as $tag) {
   $v = $tag->get(\'value\');
   $vs = explode($tvDelimiter,$v);
   foreach ($vs as $key) {
      $key = trim($key);
      if (empty($key)) continue;
      if ($toLower) { /* allow for case-insensitive filtering */
          $key = $useMultibyte ? mb_strtolower($key,$encoding) : strtolower($key);
      }
      /* increment tag count */
      if (empty($tagList[$key])) {
         $tagList[$key] = 1;
      } else { $tagList[$key]++; }
   }
}

/* sort */
switch ($sortBy.\'-\'.$sortDir) {
    case \'publishedon-DESC\': case \'publishedon-ASC\': break;
    case \'tag-ASC\': ksort($tagList); break;
    case \'tag-DESC\': krsort($tagList); break;
    case \'count-DESC\': asort($tagList); break;
    case \'count-ASC\': default: arsort($tagList); break;
    case \'rand-ASC\': case \'random-ASC\': case \'rand()-asc\': $tagList = $tagLister->ashuffle($tagList); break;
}

/* iterate */
$totalTags = 0;
$i = $all ? 1 : 0;
foreach ($tagList as $tag => $count) {
    if ($i >= $limit) break;
    $tagCls = $cls.((!empty($altCls) && $i % 2)? \' \'.$altCls : \'\');
    if (!empty($firstCls) && $i == 0) $tagCls .= \' \'.$firstCls;
    if (!empty($lastCls) && ($i+1 >= $limit || $i == $count)) $tagCls .= \' \'.$lastCls;
    /* if tag is currently being viewed, mark as active */
    if (!empty($activeCls) && $tag==$activeTag && (empty($activeKey) || $tv==$activeKey)) $tagCls .= \' \'.$activeCls;
    /* handle weighting for css */
    if (!empty($weights) && !empty($weightCls)) $tagCls .= \' \'.$weightCls.ceil($count / (max($tagList) / $weights));

    $tagArray = array(
        \'tag\' => $tag,
        \'tagVar\' => $tagVar,
        \'tagKey\' => $tv,
        \'tagKeyVar\' => $tagKeyVar,
        \'count\' => $count,
        \'target\' => $target,
        \'cls\' => $tagCls,
        \'idx\' => $i,
    );
    $tagParams = array();
    if (empty($useTagFurl)) {
        $tagParams[$tagVar] = $tag;
        $tagParams[$tagKeyVar] = $tv;
    }
    $tagArray[\'url\'] = $modx->makeUrl($target,\'\',$tagParams);
    if (!empty($useTagFurl)) {
        $tagArray[\'url\'] = rtrim($tagArray[\'url\'],\'/\').\'/\'.(!empty($furlKey) ? $furlKey : $tv).\'/\'.urlencode($tag);
    }

    $output[] = $tagLister->getChunk($tpl,$tagArray);
    $totalTags += $count;
    $i++;
}

if ($all) {
    $allTpl = $modx->getOption(\'allTpl\',$scriptProperties,\'all\');
    $allChunk = $tagLister->getChunk($allTpl,array(
        \'tag\' => !empty($scriptProperties[\'allText\']) ? $scriptProperties[\'allText\'] : $modx->lexicon(\'all_tags\'),
        \'tagVar\' => $tagVar,
        \'tagKey\' => $tv,
        \'tagKeyVar\' => $tagKeyVar,
        \'count\' => $totalTags,
        \'target\' => $target,
        \'cls\' => $cls,
        \'url\' => $useTagFurl ? $modx->makeUrl($target).$tv.\'/\' : $modx->makeUrl($target,\'\',array(
            $tagVar => \'\',
            $tagKeyVar => $tv,
        )),
    ));
    if ($modx->getOption(\'allPosition\',$scriptProperties,\'B\') == \'T\') {
        array_unshift($output,$allChunk);
    } else {
        array_push($output,$allChunk);
    }
}

/* output */
$outputSeparator = $modx->getOption(\'outputSeparator\',$scriptProperties,"\\n");
$output = implode($outputSeparator,$output);
$toPlaceholder = $modx->getOption(\'toPlaceholder\',$scriptProperties,false);
if (!empty($toPlaceholder)) {
    $modx->setPlaceholder($toPlaceholder,$output);
    return \'\';
}
return $output;',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
        ),
      ),
      'Wayfinder' => 
      array (
        'fields' => 
        array (
          'id' => 23,
          'source' => 0,
          'property_preprocess' => false,
          'name' => 'Wayfinder',
          'description' => 'Wayfinder for MODx Revolution 2.0.0-beta-5 and later.',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '/**
 * Wayfinder Snippet to build site navigation menus
 *
 * Totally refactored from original DropMenu nav builder to make it easier to
 * create custom navigation by using chunks as output templates. By using
 * templates, many of the paramaters are no longer needed for flexible output
 * including tables, unordered- or ordered-lists (ULs or OLs), definition lists
 * (DLs) or in any other format you desire.
 *
 * @version 2.1.1-beta5
 * @author Garry Nutting (collabpad.com)
 * @author Kyle Jaebker (muddydogpaws.com)
 * @author Ryan Thrash (modx.com)
 * @author Shaun McCormick (modx.com)
 * @author Jason Coward (modx.com)
 *
 * @example [[Wayfinder? &startId=`0`]]
 *
 * @var modX $modx
 * @var array $scriptProperties
 * 
 * @package wayfinder
 */
$wayfinder_base = $modx->getOption(\'wayfinder.core_path\',$scriptProperties,$modx->getOption(\'core_path\').\'components/wayfinder/\');

/* include a custom config file if specified */
if (isset($scriptProperties[\'config\'])) {
    $scriptProperties[\'config\'] = str_replace(\'../\',\'\',$scriptProperties[\'config\']);
    $scriptProperties[\'config\'] = $wayfinder_base.\'configs/\'.$scriptProperties[\'config\'].\'.config.php\';
} else {
    $scriptProperties[\'config\'] = $wayfinder_base.\'configs/default.config.php\';
}
if (file_exists($scriptProperties[\'config\'])) {
    include $scriptProperties[\'config\'];
}

/* include wayfinder class */
include_once $wayfinder_base.\'wayfinder.class.php\';
if (!$modx->loadClass(\'Wayfinder\',$wayfinder_base,true,true)) {
    return \'error: Wayfinder class not found\';
}
$wf = new Wayfinder($modx,$scriptProperties);

/* get user class definitions
 * TODO: eventually move these into config parameters */
$wf->_css = array(
    \'first\' => isset($firstClass) ? $firstClass : \'\',
    \'last\' => isset($lastClass) ? $lastClass : \'last\',
    \'here\' => isset($hereClass) ? $hereClass : \'active\',
    \'parent\' => isset($parentClass) ? $parentClass : \'\',
    \'row\' => isset($rowClass) ? $rowClass : \'\',
    \'outer\' => isset($outerClass) ? $outerClass : \'\',
    \'inner\' => isset($innerClass) ? $innerClass : \'\',
    \'level\' => isset($levelClass) ? $levelClass: \'\',
    \'self\' => isset($selfClass) ? $selfClass : \'\',
    \'weblink\' => isset($webLinkClass) ? $webLinkClass : \'\'
);

/* get user templates
 * TODO: eventually move these into config parameters */
$wf->_templates = array(
    \'outerTpl\' => isset($outerTpl) ? $outerTpl : \'\',
    \'rowTpl\' => isset($rowTpl) ? $rowTpl : \'\',
    \'parentRowTpl\' => isset($parentRowTpl) ? $parentRowTpl : \'\',
    \'parentRowHereTpl\' => isset($parentRowHereTpl) ? $parentRowHereTpl : \'\',
    \'hereTpl\' => isset($hereTpl) ? $hereTpl : \'\',
    \'innerTpl\' => isset($innerTpl) ? $innerTpl : \'\',
    \'innerRowTpl\' => isset($innerRowTpl) ? $innerRowTpl : \'\',
    \'innerHereTpl\' => isset($innerHereTpl) ? $innerHereTpl : \'\',
    \'activeParentRowTpl\' => isset($activeParentRowTpl) ? $activeParentRowTpl : \'\',
    \'categoryFoldersTpl\' => isset($categoryFoldersTpl) ? $categoryFoldersTpl : \'\',
    \'startItemTpl\' => isset($startItemTpl) ? $startItemTpl : \'\'
);

/* process Wayfinder */
$output = $wf->run();
if ($wf->_config[\'debug\']) {
    $output .= $wf->renderDebugOutput();
}

/* output results */
if ($wf->_config[\'ph\']) {
    $modx->setPlaceholder($wf->_config[\'ph\'],$output);
} else {
    return $output;
}',
          'locked' => false,
          'properties' => 
          array (
            'level' => 
            array (
              'name' => 'level',
              'desc' => 'prop_wayfinder.level_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '0',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Depth (number of levels) to build the menu from. 0 goes through all levels.',
              'area' => '',
              'area_trans' => '',
            ),
            'includeDocs' => 
            array (
              'name' => 'includeDocs',
              'desc' => 'prop_wayfinder.includeDocs_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '0',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Acts as a filter and will limit the output to only the documents specified in this parameter. The startId is still required.',
              'area' => '',
              'area_trans' => '',
            ),
            'excludeDocs' => 
            array (
              'name' => 'excludeDocs',
              'desc' => 'prop_wayfinder.excludeDocs_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '0',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Acts as a filter and will remove the documents specified in this parameter from the output. The startId is still required.',
              'area' => '',
              'area_trans' => '',
            ),
            'contexts' => 
            array (
              'name' => 'contexts',
              'desc' => 'prop_wayfinder.contexts_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Specify the contexts for the Resources that will be loaded in this menu. Useful when used with startId at 0 to show all first-level items. Note: This will increase load times a bit, but if you set cacheResults to 1, that will offset the load time.',
              'area' => '',
              'area_trans' => '',
            ),
            'cacheResults' => 
            array (
              'name' => 'cacheResults',
              'desc' => 'prop_wayfinder.cacheResults_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => true,
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Cache the generated menu to the MODX Resource cache. Setting this to 1 will speed up the loading of your menus.',
              'area' => '',
              'area_trans' => '',
            ),
            'cacheTime' => 
            array (
              'name' => 'cacheTime',
              'desc' => 'prop_wayfinder.cacheTime_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 3600,
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'The number of seconds to store the cached menu, if cacheResults is 1. Set to 0 to store indefinitely until cache is manually cleared.',
              'area' => '',
              'area_trans' => '',
            ),
            'ph' => 
            array (
              'name' => 'ph',
              'desc' => 'prop_wayfinder.ph_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => false,
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'To display send the output of Wayfinder to a placeholder set the ph parameter equal to the name of the desired placeholder. All output including the debugging (if on) will be sent to the placeholder specified.',
              'area' => '',
              'area_trans' => '',
            ),
            'debug' => 
            array (
              'name' => 'debug',
              'desc' => 'prop_wayfinder.debug_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => false,
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'With the debug parameter set to 1, Wayfinder will output information on how each Resource was processed.',
              'area' => '',
              'area_trans' => '',
            ),
            'ignoreHidden' => 
            array (
              'name' => 'ignoreHidden',
              'desc' => 'prop_wayfinder.ignoreHidden_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => false,
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'The ignoreHidden parameter allows Wayfinder to ignore the display in menu flag that can be set for each document. With this parameter set to 1, all Resources will be displayed regardless of the Display in Menu flag.',
              'area' => '',
              'area_trans' => '',
            ),
            'hideSubMenus' => 
            array (
              'name' => 'hideSubMenus',
              'desc' => 'prop_wayfinder.hideSubMenus_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => false,
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'The hideSubMenus parameter will remove all non-active submenus from the Wayfinder output if set to 1. This parameter only works if multiple levels are being displayed.',
              'area' => '',
              'area_trans' => '',
            ),
            'useWeblinkUrl' => 
            array (
              'name' => 'useWeblinkUrl',
              'desc' => 'prop_wayfinder.useWeblinkUrl_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => true,
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => ' If WebLinks are used in the output, Wayfinder will output the link specified in the WebLink instead of the normal MODx link. To use the standard display of WebLinks (like any other Resource) set this to 0.',
              'area' => '',
              'area_trans' => '',
            ),
            'fullLink' => 
            array (
              'name' => 'fullLink',
              'desc' => 'prop_wayfinder.fullLink_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => false,
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'If set to 1, will display the entire, absolute URL in the link. (It is recommended to use scheme instead.)',
              'area' => '',
              'area_trans' => '',
            ),
            'scheme' => 
            array (
              'name' => 'scheme',
              'desc' => 'prop_wayfinder.scheme_desc',
              'type' => 'list',
              'options' => 
              array (
                0 => 
                array (
                  'text' => 'prop_wayfinder.relative',
                  'value' => '',
                  'name' => 'Relative',
                ),
                1 => 
                array (
                  'text' => 'prop_wayfinder.absolute',
                  'value' => 'abs',
                  'name' => 'Absolute',
                ),
                2 => 
                array (
                  'text' => 'prop_wayfinder.full',
                  'value' => 'full',
                  'name' => 'Full',
                ),
              ),
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Determines how URLs are generated for each link. Set to "abs" to show the absolute URL, "full" to show the full URL, and blank to use the relative URL. Defaults to relative.',
              'area' => '',
              'area_trans' => '',
            ),
            'sortOrder' => 
            array (
              'name' => 'sortOrder',
              'desc' => 'prop_wayfinder.sortOrder_desc',
              'type' => 'list',
              'options' => 
              array (
                0 => 
                array (
                  'text' => 'prop_wayfinder.ascending',
                  'value' => 'ASC',
                  'name' => 'Ascending',
                ),
                1 => 
                array (
                  'text' => 'prop_wayfinder.descending',
                  'value' => 'DESC',
                  'name' => 'Descending',
                ),
              ),
              'value' => 'ASC',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Allows the menu to be sorted in either ascending or descending order.',
              'area' => '',
              'area_trans' => '',
            ),
            'sortBy' => 
            array (
              'name' => 'sortBy',
              'desc' => 'prop_wayfinder.sortBy_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'menuindex',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Sorts the output by any of the Resource fields on a level by level basis. This means that each submenu will be sorted independently of all other submenus at the same level. Random will sort the output differently every time the page is loaded if the snippet is called uncached.',
              'area' => '',
              'area_trans' => '',
            ),
            'limit' => 
            array (
              'name' => 'limit',
              'desc' => 'prop_wayfinder.limit_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '0',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Causes Wayfinder to only process the number of items specified per level.',
              'area' => '',
              'area_trans' => '',
            ),
            'cssTpl' => 
            array (
              'name' => 'cssTpl',
              'desc' => 'prop_wayfinder.cssTpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => false,
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'This parameter allows for a chunk containing a link to a style sheet or style information to be inserted into the head section of the generated page.',
              'area' => '',
              'area_trans' => '',
            ),
            'jsTpl' => 
            array (
              'name' => 'jsTpl',
              'desc' => 'prop_wayfinder.jsTpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => false,
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'This parameter allows for a chunk containing some Javascript to be inserted into the head section of the generated page.',
              'area' => '',
              'area_trans' => '',
            ),
            'rowIdPrefix' => 
            array (
              'name' => 'rowIdPrefix',
              'desc' => 'prop_wayfinder.rowIdPrefix_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => false,
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'If set, Wayfinder will replace the id placeholder with a unique id consisting of the specified prefix plus the Resource id.',
              'area' => '',
              'area_trans' => '',
            ),
            'textOfLinks' => 
            array (
              'name' => 'textOfLinks',
              'desc' => 'prop_wayfinder.textOfLinks_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'menutitle',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'This field will be inserted into the linktext placeholder.',
              'area' => '',
              'area_trans' => '',
            ),
            'titleOfLinks' => 
            array (
              'name' => 'titleOfLinks',
              'desc' => 'prop_wayfinder.titleOfLinks_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'pagetitle',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'This field will be inserted into the linktitle placeholder.',
              'area' => '',
              'area_trans' => '',
            ),
            'displayStart' => 
            array (
              'name' => 'displayStart',
              'desc' => 'prop_wayfinder.displayStart_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => false,
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Show the document as referenced by startId in the menu.',
              'area' => '',
              'area_trans' => '',
            ),
            'firstClass' => 
            array (
              'name' => 'firstClass',
              'desc' => 'prop_wayfinder.firstClass_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'first',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'CSS class for the first item at a given menu level.',
              'area' => '',
              'area_trans' => '',
            ),
            'lastClass' => 
            array (
              'name' => 'lastClass',
              'desc' => 'prop_wayfinder.lastClass_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'last',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'CSS class for the last item at a given menu level.',
              'area' => '',
              'area_trans' => '',
            ),
            'hereClass' => 
            array (
              'name' => 'hereClass',
              'desc' => 'prop_wayfinder.hereClass_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'active',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'CSS class for the items showing where you are, all the way up the chain.',
              'area' => '',
              'area_trans' => '',
            ),
            'parentClass' => 
            array (
              'name' => 'parentClass',
              'desc' => 'prop_wayfinder.parentClass_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'CSS class for menu items that are a container and have children.',
              'area' => '',
              'area_trans' => '',
            ),
            'rowClass' => 
            array (
              'name' => 'rowClass',
              'desc' => 'prop_wayfinder.rowClass_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'CSS class denoting each output row.',
              'area' => '',
              'area_trans' => '',
            ),
            'outerClass' => 
            array (
              'name' => 'outerClass',
              'desc' => 'prop_wayfinder.outerClass_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'CSS class for the outer template.',
              'area' => '',
              'area_trans' => '',
            ),
            'innerClass' => 
            array (
              'name' => 'innerClass',
              'desc' => 'prop_wayfinder.innerClass_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'CSS class for the inner template.',
              'area' => '',
              'area_trans' => '',
            ),
            'levelClass' => 
            array (
              'name' => 'levelClass',
              'desc' => 'prop_wayfinder.levelClass_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'CSS class denoting every output row level. The level number will be added to the specified class (level1, level2, level3 etc if you specified "level").',
              'area' => '',
              'area_trans' => '',
            ),
            'selfClass' => 
            array (
              'name' => 'selfClass',
              'desc' => 'prop_wayfinder.selfClass_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'CSS class for the current item.',
              'area' => '',
              'area_trans' => '',
            ),
            'webLinkClass' => 
            array (
              'name' => 'webLinkClass',
              'desc' => 'prop_wayfinder.webLinkClass_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'CSS class for weblink items.',
              'area' => '',
              'area_trans' => '',
            ),
            'outerTpl' => 
            array (
              'name' => 'outerTpl',
              'desc' => 'prop_wayfinder.outerTpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Name of the chunk containing the template for the outer most container; if not included, a string including "<ul>[[+wf.wrapper]]</ul>" is assumed.',
              'area' => '',
              'area_trans' => '',
            ),
            'rowTpl' => 
            array (
              'name' => 'rowTpl',
              'desc' => 'prop_wayfinder.rowTpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Name of the chunk containing the template for the regular row items.',
              'area' => '',
              'area_trans' => '',
            ),
            'parentRowTpl' => 
            array (
              'name' => 'parentRowTpl',
              'desc' => 'prop_wayfinder.parentRowTpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Name of the chunk containing the template for any Resource that is a container and has children. Remember the [wf.wrapper] placeholder to output the children documents.',
              'area' => '',
              'area_trans' => '',
            ),
            'parentRowHereTpl' => 
            array (
              'name' => 'parentRowHereTpl',
              'desc' => 'prop_wayfinder.parentRowHereTpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Name of the chunk containing the template for the current Resource if it is a container and has children. Remember the [wf.wrapper] placeholder to output the children documents.',
              'area' => '',
              'area_trans' => '',
            ),
            'hereTpl' => 
            array (
              'name' => 'hereTpl',
              'desc' => 'prop_wayfinder.hereTpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Name of the chunk containing the template for the current Resource.',
              'area' => '',
              'area_trans' => '',
            ),
            'innerTpl' => 
            array (
              'name' => 'innerTpl',
              'desc' => 'prop_wayfinder.innerTpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Name of the chunk containing the template for each submenu. If no innerTpl is specified the outerTpl is used in its place.',
              'area' => '',
              'area_trans' => '',
            ),
            'innerRowTpl' => 
            array (
              'name' => 'innerRowTpl',
              'desc' => 'prop_wayfinder.innerRowTpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Name of the chunk containing the template for the row items in a subfolder.',
              'area' => '',
              'area_trans' => '',
            ),
            'innerHereTpl' => 
            array (
              'name' => 'innerHereTpl',
              'desc' => 'prop_wayfinder.innerHereTpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Name of the chunk containing the template for the current Resource if it is in a subfolder.',
              'area' => '',
              'area_trans' => '',
            ),
            'activeParentRowTpl' => 
            array (
              'name' => 'activeParentRowTpl',
              'desc' => 'prop_wayfinder.activeParentRowTpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Name of the chunk containing the template for items that are containers, have children and are currently active in the tree.',
              'area' => '',
              'area_trans' => '',
            ),
            'categoryFoldersTpl' => 
            array (
              'name' => 'categoryFoldersTpl',
              'desc' => 'prop_wayfinder.categoryFoldersTpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Name of the chunk containing the template for category folders. Category folders are determined by setting the template to blank or by setting the link attributes field to rel="category".',
              'area' => '',
              'area_trans' => '',
            ),
            'startItemTpl' => 
            array (
              'name' => 'startItemTpl',
              'desc' => 'prop_wayfinder.startItemTpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Name of the chunk containing the template for the start item, if enabled via the &displayStart parameter. Note: the default template shows the start item but does not link it. If you do not need a link, a class can be applied to the default template using the parameter &firstClass=`className`.',
              'area' => '',
              'area_trans' => '',
            ),
            'permissions' => 
            array (
              'name' => 'permissions',
              'desc' => 'prop_wayfinder.permissions_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'list',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Will check for a permission on the Resource. Defaults to "list" - set to blank to skip normal permissions checks.',
              'area' => '',
              'area_trans' => '',
            ),
            'hereId' => 
            array (
              'name' => 'hereId',
              'desc' => 'prop_wayfinder.hereId_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Optional. If set, will change the "here" Resource to this ID. Defaults to the currently active Resource.',
              'area' => '',
              'area_trans' => '',
            ),
            'where' => 
            array (
              'name' => 'where',
              'desc' => 'prop_wayfinder.where_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Optional. A JSON object for where conditions for all items selected in the menu.',
              'area' => '',
              'area_trans' => '',
            ),
            'templates' => 
            array (
              'name' => 'templates',
              'desc' => 'prop_wayfinder.templates_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Optional. A comma-separated list of Template IDs to restrict selected Resources to.',
              'area' => '',
              'area_trans' => '',
            ),
            'previewUnpublished' => 
            array (
              'name' => 'previewUnpublished',
              'desc' => 'prop_wayfinder.previewunpublished_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'wayfinder:properties',
              'desc_trans' => 'Optional. If set to Yes, if you are logged into the mgr and have the view_unpublished permission, it will allow previewing of unpublished resources in your menus in the front-end.',
              'area' => '',
              'area_trans' => '',
            ),
          ),
          'moduleguid' => '',
          'static' => false,
          'static_file' => '',
          'content' => '/**
 * Wayfinder Snippet to build site navigation menus
 *
 * Totally refactored from original DropMenu nav builder to make it easier to
 * create custom navigation by using chunks as output templates. By using
 * templates, many of the paramaters are no longer needed for flexible output
 * including tables, unordered- or ordered-lists (ULs or OLs), definition lists
 * (DLs) or in any other format you desire.
 *
 * @version 2.1.1-beta5
 * @author Garry Nutting (collabpad.com)
 * @author Kyle Jaebker (muddydogpaws.com)
 * @author Ryan Thrash (modx.com)
 * @author Shaun McCormick (modx.com)
 * @author Jason Coward (modx.com)
 *
 * @example [[Wayfinder? &startId=`0`]]
 *
 * @var modX $modx
 * @var array $scriptProperties
 * 
 * @package wayfinder
 */
$wayfinder_base = $modx->getOption(\'wayfinder.core_path\',$scriptProperties,$modx->getOption(\'core_path\').\'components/wayfinder/\');

/* include a custom config file if specified */
if (isset($scriptProperties[\'config\'])) {
    $scriptProperties[\'config\'] = str_replace(\'../\',\'\',$scriptProperties[\'config\']);
    $scriptProperties[\'config\'] = $wayfinder_base.\'configs/\'.$scriptProperties[\'config\'].\'.config.php\';
} else {
    $scriptProperties[\'config\'] = $wayfinder_base.\'configs/default.config.php\';
}
if (file_exists($scriptProperties[\'config\'])) {
    include $scriptProperties[\'config\'];
}

/* include wayfinder class */
include_once $wayfinder_base.\'wayfinder.class.php\';
if (!$modx->loadClass(\'Wayfinder\',$wayfinder_base,true,true)) {
    return \'error: Wayfinder class not found\';
}
$wf = new Wayfinder($modx,$scriptProperties);

/* get user class definitions
 * TODO: eventually move these into config parameters */
$wf->_css = array(
    \'first\' => isset($firstClass) ? $firstClass : \'\',
    \'last\' => isset($lastClass) ? $lastClass : \'last\',
    \'here\' => isset($hereClass) ? $hereClass : \'active\',
    \'parent\' => isset($parentClass) ? $parentClass : \'\',
    \'row\' => isset($rowClass) ? $rowClass : \'\',
    \'outer\' => isset($outerClass) ? $outerClass : \'\',
    \'inner\' => isset($innerClass) ? $innerClass : \'\',
    \'level\' => isset($levelClass) ? $levelClass: \'\',
    \'self\' => isset($selfClass) ? $selfClass : \'\',
    \'weblink\' => isset($webLinkClass) ? $webLinkClass : \'\'
);

/* get user templates
 * TODO: eventually move these into config parameters */
$wf->_templates = array(
    \'outerTpl\' => isset($outerTpl) ? $outerTpl : \'\',
    \'rowTpl\' => isset($rowTpl) ? $rowTpl : \'\',
    \'parentRowTpl\' => isset($parentRowTpl) ? $parentRowTpl : \'\',
    \'parentRowHereTpl\' => isset($parentRowHereTpl) ? $parentRowHereTpl : \'\',
    \'hereTpl\' => isset($hereTpl) ? $hereTpl : \'\',
    \'innerTpl\' => isset($innerTpl) ? $innerTpl : \'\',
    \'innerRowTpl\' => isset($innerRowTpl) ? $innerRowTpl : \'\',
    \'innerHereTpl\' => isset($innerHereTpl) ? $innerHereTpl : \'\',
    \'activeParentRowTpl\' => isset($activeParentRowTpl) ? $activeParentRowTpl : \'\',
    \'categoryFoldersTpl\' => isset($categoryFoldersTpl) ? $categoryFoldersTpl : \'\',
    \'startItemTpl\' => isset($startItemTpl) ? $startItemTpl : \'\'
);

/* process Wayfinder */
$output = $wf->run();
if ($wf->_config[\'debug\']) {
    $output .= $wf->renderDebugOutput();
}

/* output results */
if ($wf->_config[\'ph\']) {
    $modx->setPlaceholder($wf->_config[\'ph\'],$output);
} else {
    return $output;
}',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
        ),
      ),
      'Archivist' => 
      array (
        'fields' => 
        array (
          'id' => 36,
          'source' => 0,
          'property_preprocess' => false,
          'name' => 'Archivist',
          'description' => '',
          'editor_type' => 0,
          'category' => 5,
          'cache_type' => 0,
          'snippet' => '/**
 * Archivist
 *
 * Copyright 2010-2011 by Shaun McCormick <shaun@modx.com>
 *
 * This file is part of Archivist, a simple archive navigation system for MODx
 * Revolution.
 *
 * Archivist is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * Archivist is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * Archivist; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package archivist
 */
/**
 * Display an archived result filter list
 *
 * @var modX $modx
 * @var array $scriptProperties
 * @var Archivist $archivist
 *
 * @package archivist
 */
$archivist = $modx->getService(\'archivist\',\'Archivist\',$modx->getOption(\'archivist.core_path\',null,$modx->getOption(\'core_path\').\'components/archivist/\').\'model/archivist/\',$scriptProperties);
if (!($archivist instanceof Archivist)) return \'\';

/* setup default properties */
$tpl = $modx->getOption(\'tpl\',$scriptProperties,\'row\');
$parents = !empty($scriptProperties[\'parents\']) ? $scriptProperties[\'parents\'] : $modx->resource->get(\'id\');
$parents = explode(\',\',$parents);
$target = !empty($scriptProperties[\'target\']) ? $scriptProperties[\'target\'] : $modx->resource->get(\'id\');
$sortBy = $modx->getOption(\'sortBy\',$scriptProperties,\'publishedon\');
$sortDir = $modx->getOption(\'sortDir\',$scriptProperties,\'DESC\');
$groupByYear = $modx->getOption(\'groupByYear\',$scriptProperties,false);
$sortYear = $modx->getOption(\'sortYear\',$scriptProperties,\'DESC\');
$depth = $modx->getOption(\'depth\',$scriptProperties,10);
$where = $modx->getOption(\'where\',$scriptProperties,\'\');

$cls = $modx->getOption(\'cls\',$scriptProperties,\'arc-row\');
$altCls = $modx->getOption(\'altCls\',$scriptProperties,\'arc-row-alt\');
$lastCls = $modx->getOption(\'lastCls\',$scriptProperties,\'\');
$firstCls = $modx->getOption(\'firstCls\',$scriptProperties,\'\');

$filterPrefix = $modx->getOption(\'filterPrefix\',$scriptProperties,\'arc_\');
$useMonth = $modx->getOption(\'useMonth\',$scriptProperties,true);
$useDay = $modx->getOption(\'useDay\',$scriptProperties,false);
$dateFormat = !empty($scriptProperties[\'dateFormat\']) ? $scriptProperties[\'dateFormat\'] : \'\';
$limit = $modx->getOption(\'limit\',$scriptProperties,12);
$start = $modx->getOption(\'start\',$scriptProperties,0);
$hideContainers = $modx->getOption(\'hideContainers\',$scriptProperties,true);
$useFurls = $modx->getOption(\'useFurls\',$scriptProperties,true);
$persistGetParams = $modx->getOption(\'persistGetParams\',$scriptProperties,false);

/* handle existing GET params */
$extraParams = $modx->getOption(\'extraParams\',$scriptProperties,array());
$extraParams = $archivist->mergeGetParams($extraParams,$persistGetParams,$filterPrefix);

/* set locale for date processing */
if ($modx->getOption(\'setLocale\',$scriptProperties,true)) {
    $cultureKey = $modx->getOption(\'cultureKey\',null,\'en\');
    $locale = !empty($scriptProperties[\'locale\']) ? $scriptProperties[\'locale\'] : $cultureKey;
    if (!empty($locale)) {
        setlocale(LC_ALL,$locale);
    }
}

/* find children of parents */
$children = array();
foreach ($parents as $parent) {
    $pchildren = $modx->getChildIds($parent, $depth);
    if (!empty($pchildren)) $children = array_merge($children, $pchildren);
}
if (!empty($children)) $parents = array_merge($parents, $children);

/* get filter format */
$dateEmpty = empty($dateFormat);
$sqlDateFormat = \'%Y\';
if ($dateEmpty) $dateFormat = \'%Y\';
if ($useMonth) {
    if ($dateEmpty) $dateFormat = \'%B \'.$dateFormat;
    $sqlDateFormat = \'%b \'.$sqlDateFormat;
}
if ($useDay) {
    if ($dateEmpty) $dateFormat = \'%d \'.$dateFormat;
    $sqlDateFormat = \'%d \'.$sqlDateFormat;
}
/* build query */
$c = $modx->newQuery(\'modResource\');
$fields = $modx->getSelectColumns(\'modResource\',\'\',\'\',array(\'id\',$sortBy));
$c->select($fields);
$c->select(array(
    \'FROM_UNIXTIME(\'.$sortBy.\',"\'.$sqlDateFormat.\'") AS \'.$modx->escape(\'date\'),
    \'FROM_UNIXTIME(\'.$sortBy.\',"\'.$sqlDateFormat.\'") AS \'.$modx->escape(\'date\'),
    \'FROM_UNIXTIME(\'.$sortBy.\',"%D") AS \'.$modx->escape(\'day_formatted\'),
    \'COUNT(\'.$modx->escape(\'id\').\') AS \'.$modx->escape(\'count\'),
));
$c->where(array(
    \'parent:IN\' => $parents,
    \'published\' => true,
    \'deleted\' => false,
));
/* don\'t grab unpublished resources */
$c->where(array(
    \'published\' => true,
));
if ($hideContainers) {
    $c->where(array(
        \'isfolder\' => false,
    ));
}
if (!empty($where)) {
    $where = $modx->fromJSON($where);
    $c->where($where);
}
$exclude = $modx->getOption(\'exclude\',$scriptProperties,\'\');
if (!empty($exclude)) {
    $c->where(array(
        \'id:NOT IN\' => is_array($exclude) ? $exclude : explode(\',\',$exclude),
    ));
}
$c->sortby(\'FROM_UNIXTIME(`\'.$sortBy.\'`,"%Y") \'.$sortDir.\', FROM_UNIXTIME(`\'.$sortBy.\'`,"%m") \'.$sortDir.\', FROM_UNIXTIME(`\'.$sortBy.\'`,"%d") \'.$sortDir,\'\');
$c->groupby(\'FROM_UNIXTIME(`\'.$sortBy.\'`,"\'.$sqlDateFormat.\'")\');
/* if limiting to X records */
if (!empty($limit)) { $c->limit($limit,$start); }
$resources = $modx->getIterator(\'modResource\',$c);

/* iterate over resources */
$output = array();
$groupByYearOutput = array();
$idx = 0;
$count = count($resources);
/** @var modResource $resource */
foreach ($resources as $resource) {
    $resourceArray = $resource->toArray();

    $date = $resource->get($sortBy);
    $dateObj = strtotime($date);

    $resourceArray[\'date\'] = strftime($dateFormat,$dateObj);
    $resourceArray[\'month_name_abbr\'] = strftime(\'%b\',$dateObj);
    $resourceArray[\'month_name\'] = strftime(\'%B\',$dateObj);
    $resourceArray[\'month\'] = strftime(\'%m\',$dateObj);
    $resourceArray[\'year\'] = strftime(\'%Y\',$dateObj);
    $resourceArray[\'year_two_digit\'] = strftime(\'%y\',$dateObj);
    $resourceArray[\'day\'] = strftime(\'%d\',$dateObj);
    $resourceArray[\'weekday\'] = strftime(\'%A\',$dateObj);
    $resourceArray[\'weekday_abbr\'] = strftime(\'%a\',$dateObj);
    $resourceArray[\'weekday_idx\'] = strftime(\'%w\',$dateObj);

    /* css classes */
    $resourceArray[\'cls\'] = $cls;
    if ($idx % 2) { $resourceArray[\'cls\'] .= \' \'.$altCls; }
    if ($idx == 0 && !empty($firstCls)) { $resourceArray[\'cls\'] .= \' \'.$firstCls; }
    if ($idx+1 == $count && !empty($lastCls)) { $resourceArray[\'cls\'] .= \' \'.$lastCls; }

    /* setup GET params */
    $params = array();
    $params[$filterPrefix.\'year\'] = $resourceArray[\'year\'];

    /* if using month filter */
    if ($useMonth) {
        $params[$filterPrefix.\'month\'] = $resourceArray[\'month\'];
    }
    /* if using day filter (why you would ever is beyond me...) */
    if ($useDay) {
        $params[$filterPrefix.\'day\'] = $resourceArray[\'day\'];
        if (empty($scriptProperties[\'dateFormat\'])) {
            $resourceArray[\'date\'] = $resourceArray[\'month_name\'].\' \'.$resourceArray[\'day\'].\', \'.$resourceArray[\'year\'];
        }
    }

    if ($useFurls) {
        $params = implode(\'/\',$params);
        if (!empty($extraParams)) $params .= \'?\'.$extraParams;
        $resourceArray[\'url\'] = $modx->makeUrl($target).$params;
    } else {
        $params = http_build_query($params);
        if (!empty($extraParams)) $params .= \'&\'.$extraParams;
        $resourceArray[\'url\'] = $modx->makeUrl($target,\'\',$params);
    }

    if ($groupByYear) {
        $groupByYearOutput[$resourceArray[\'year\']][] = $resourceArray;
    } else {
        $output[] = $archivist->getChunk($tpl,$resourceArray);
    }

    $idx++;
}

if ($groupByYear) {
    $wrapperTpl = $modx->getOption(\'yearGroupTpl\',$scriptProperties,\'yeargroup\');
    $wrapperRowSeparator = $modx->getOption(\'yearGroupRowSeparator\',$scriptProperties,"\\n");
    if (strtolower($sortYear) === \'asc\') {
        ksort($groupByYearOutput);
    } else {
        krsort($groupByYearOutput);
    }
    foreach ($groupByYearOutput as $year => $row) {
        $wrapper[\'year\'] = $year;

        $params = array();
        $params[$filterPrefix.\'year\'] = $year;

        if ($useFurls) {
            $params = implode(\'/\',$params);
            if (!empty($extraParams)) $params .= \'?\'.$extraParams;
            $wrapper[\'url\'] = $modx->makeUrl($target).$params;
        } else {
            $params = http_build_query($params);
            if (!empty($extraParams)) $params .= \'&\'.$extraParams;
            $wrapper[\'url\'] = $modx->makeUrl($target,\'\',$params);
        }

        $wrapper[\'row\'] = array();
        foreach ($row as $month) {
            $wrapper[\'row\'][] = $archivist->getChunk($tpl,$month);
        }
        $wrapper[\'row\'] = implode($wrapperRowSeparator,$wrapper[\'row\']);
        $output[] = $archivist->getChunk($wrapperTpl,$wrapper);
    }
}

/* output or set to placeholder */
$outputSeparator = $modx->getOption(\'outputSeparator\',$scriptProperties,"\\n");
$output = implode($outputSeparator,$output);
$toPlaceholder = $modx->getOption(\'toPlaceholder\',$scriptProperties,false);
if (!empty($toPlaceholder)) {
    $modx->setPlaceholder($toPlaceholder,$output);
    return \'\';
}
return $output;',
          'locked' => false,
          'properties' => 
          array (
            'tpl' => 
            array (
              'name' => 'tpl',
              'desc' => 'prop_archivist.tpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'row',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'Name of a Chunk that will be used for each result.',
              'area_trans' => '',
            ),
            'target' => 
            array (
              'name' => 'target',
              'desc' => 'prop_archivist.target_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'The target Resource to point the archive links to. Will default to the current Resource.',
              'area_trans' => '',
            ),
            'parents' => 
            array (
              'name' => 'parents',
              'desc' => 'prop_archivist.parents_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'Optional. Comma-delimited list of ids serving as parents. Will default to the current Resource otherwise.',
              'area_trans' => '',
            ),
            'depth' => 
            array (
              'name' => 'depth',
              'desc' => 'prop_archivist.depth_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '10',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'Integer value indicating depth to search for resources from each parent. Defaults to 10.',
              'area_trans' => '',
            ),
            'exclude' => 
            array (
              'name' => 'exclude',
              'desc' => 'prop_archivist.exclude_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'Optional. Comma-delimited list of ids to exclude from results. Defaults to none.',
              'area_trans' => '',
            ),
            'sortBy' => 
            array (
              'name' => 'sortBy',
              'desc' => 'prop_archivist.sortby_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'publishedon',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'Field to sort by. Defaults to publishedon.',
              'area_trans' => '',
            ),
            'sortDir' => 
            array (
              'name' => 'sortDir',
              'desc' => 'prop_archivist.sortdir_desc',
              'type' => 'list',
              'options' => 
              array (
                0 => 
                array (
                  'text' => 'prop_arc.ascending',
                  'value' => 'ASC',
                  'name' => 'Ascending',
                ),
                1 => 
                array (
                  'text' => 'prop_arc.descending',
                  'value' => 'DESC',
                  'name' => 'Descending',
                ),
              ),
              'value' => 'DESC',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'Order which to sort by. Defaults to DESC.',
              'area_trans' => '',
            ),
            'limit' => 
            array (
              'name' => 'limit',
              'desc' => 'prop_archivist.limit_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '12',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'Limits the number of resources returned. Defaults to 10.',
              'area_trans' => '',
            ),
            'start' => 
            array (
              'name' => 'start',
              'desc' => 'prop_archivist.start_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '0',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'Optional. An offset of resources returned by the criteria to skip.',
              'area_trans' => '',
            ),
            'useMonth' => 
            array (
              'name' => 'useMonth',
              'desc' => 'prop_archivist.usemonth_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => true,
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'If 1, will use the month in the archive list.',
              'area_trans' => '',
            ),
            'useDay' => 
            array (
              'name' => 'useDay',
              'desc' => 'prop_archivist.useday_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => false,
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'If 1, will use the day in the archive list.',
              'area_trans' => '',
            ),
            'groupByYear' => 
            array (
              'name' => 'groupByYear',
              'desc' => 'prop_archivist.groupbyyear_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => false,
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'If 1, Archivist will attempt to group the results by year and display results in a nested list.',
              'area_trans' => '',
            ),
            'groupByYearTpl' => 
            array (
              'name' => 'groupByYearTpl',
              'desc' => 'prop_archivist.groupbyyeartpl_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'yeargroup',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'The Chunk to use for the wrapper when grouping by year.',
              'area_trans' => '',
            ),
            'dateFormat' => 
            array (
              'name' => 'dateFormat',
              'desc' => 'prop_archivist.dateformat_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'Optional. The date format, according to MySQL DATE_FORMAT() syntax, for each row. If blank, Archivist will calculate this automatically.',
              'area_trans' => '',
            ),
            'useFurls' => 
            array (
              'name' => 'useFurls',
              'desc' => 'prop_archivist.usefurls',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => true,
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'prop_archivist.usefurls',
              'area_trans' => '',
            ),
            'persistGetParams' => 
            array (
              'name' => 'persistGetParams',
              'desc' => 'prop_archivist.persistgetparams_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => false,
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'If true, links generated will persist the GET params of the page they are on. Not recommended.',
              'area_trans' => '',
            ),
            'extraParams' => 
            array (
              'name' => 'extraParams',
              'desc' => 'prop_archivist.extraparams_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'Optional. If specified, will attach this to the URL of each row.',
              'area_trans' => '',
            ),
            'cls' => 
            array (
              'name' => 'cls',
              'desc' => 'prop_archivist.cls_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'arc-row',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'A CSS class to add to each row.',
              'area_trans' => '',
            ),
            'altCls' => 
            array (
              'name' => 'altCls',
              'desc' => 'prop_archivist.altcls_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'arc-row-alt',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'A CSS class to add to each alternate row.',
              'area_trans' => '',
            ),
            'firstCls' => 
            array (
              'name' => 'firstCls',
              'desc' => 'prop_archivist.firstcls_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'Optional. A CSS class to add to the first row. If empty will ignore.',
              'area_trans' => '',
            ),
            'lastCls' => 
            array (
              'name' => 'lastCls',
              'desc' => 'prop_archivist.lastcls_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'Optional. A CSS class to add to the last row. If empty will ignore.',
              'area_trans' => '',
            ),
            'filterPrefix' => 
            array (
              'name' => 'filterPrefix',
              'desc' => 'prop_archivist.filterprefix_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => 'arc_',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'The prefix to use for GET parameters with the Archivist links. Make sure this is the same as the filterPrefix parameter on the getArchives snippet call.',
              'area_trans' => '',
            ),
            'toPlaceholder' => 
            array (
              'name' => 'toPlaceholder',
              'desc' => 'prop_archivist.toplaceholder_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'If set, will set the output of this snippet to this placeholder rather than output it.',
              'area_trans' => '',
            ),
            'setLocale' => 
            array (
              'name' => 'setLocale',
              'desc' => 'prop_archivist.setlocale_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => true,
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'If 1, Archivist will run the setlocale function with your cultureKey setting if your cultureKey is not "en".',
              'area_trans' => '',
            ),
            'locale' => 
            array (
              'name' => 'locale',
              'desc' => 'prop_archivist.locale_desc',
              'type' => 'textfield',
              'options' => '',
              'value' => true,
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'If this is set and setLocale is 1, will use this value instead of the cultureKey setting to set the locale by.',
              'area_trans' => '',
            ),
            'hideContainers' => 
            array (
              'name' => 'hideContainers',
              'desc' => 'prop_archivistbymonth.hidecontainers_desc',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => true,
              'lexicon' => 'archivist:properties',
              'area' => '',
              'desc_trans' => 'prop_archivistbymonth.hidecontainers_desc',
              'area_trans' => '',
            ),
          ),
          'moduleguid' => '',
          'static' => false,
          'static_file' => '',
          'content' => '/**
 * Archivist
 *
 * Copyright 2010-2011 by Shaun McCormick <shaun@modx.com>
 *
 * This file is part of Archivist, a simple archive navigation system for MODx
 * Revolution.
 *
 * Archivist is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * Archivist is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * Archivist; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package archivist
 */
/**
 * Display an archived result filter list
 *
 * @var modX $modx
 * @var array $scriptProperties
 * @var Archivist $archivist
 *
 * @package archivist
 */
$archivist = $modx->getService(\'archivist\',\'Archivist\',$modx->getOption(\'archivist.core_path\',null,$modx->getOption(\'core_path\').\'components/archivist/\').\'model/archivist/\',$scriptProperties);
if (!($archivist instanceof Archivist)) return \'\';

/* setup default properties */
$tpl = $modx->getOption(\'tpl\',$scriptProperties,\'row\');
$parents = !empty($scriptProperties[\'parents\']) ? $scriptProperties[\'parents\'] : $modx->resource->get(\'id\');
$parents = explode(\',\',$parents);
$target = !empty($scriptProperties[\'target\']) ? $scriptProperties[\'target\'] : $modx->resource->get(\'id\');
$sortBy = $modx->getOption(\'sortBy\',$scriptProperties,\'publishedon\');
$sortDir = $modx->getOption(\'sortDir\',$scriptProperties,\'DESC\');
$groupByYear = $modx->getOption(\'groupByYear\',$scriptProperties,false);
$sortYear = $modx->getOption(\'sortYear\',$scriptProperties,\'DESC\');
$depth = $modx->getOption(\'depth\',$scriptProperties,10);
$where = $modx->getOption(\'where\',$scriptProperties,\'\');

$cls = $modx->getOption(\'cls\',$scriptProperties,\'arc-row\');
$altCls = $modx->getOption(\'altCls\',$scriptProperties,\'arc-row-alt\');
$lastCls = $modx->getOption(\'lastCls\',$scriptProperties,\'\');
$firstCls = $modx->getOption(\'firstCls\',$scriptProperties,\'\');

$filterPrefix = $modx->getOption(\'filterPrefix\',$scriptProperties,\'arc_\');
$useMonth = $modx->getOption(\'useMonth\',$scriptProperties,true);
$useDay = $modx->getOption(\'useDay\',$scriptProperties,false);
$dateFormat = !empty($scriptProperties[\'dateFormat\']) ? $scriptProperties[\'dateFormat\'] : \'\';
$limit = $modx->getOption(\'limit\',$scriptProperties,12);
$start = $modx->getOption(\'start\',$scriptProperties,0);
$hideContainers = $modx->getOption(\'hideContainers\',$scriptProperties,true);
$useFurls = $modx->getOption(\'useFurls\',$scriptProperties,true);
$persistGetParams = $modx->getOption(\'persistGetParams\',$scriptProperties,false);

/* handle existing GET params */
$extraParams = $modx->getOption(\'extraParams\',$scriptProperties,array());
$extraParams = $archivist->mergeGetParams($extraParams,$persistGetParams,$filterPrefix);

/* set locale for date processing */
if ($modx->getOption(\'setLocale\',$scriptProperties,true)) {
    $cultureKey = $modx->getOption(\'cultureKey\',null,\'en\');
    $locale = !empty($scriptProperties[\'locale\']) ? $scriptProperties[\'locale\'] : $cultureKey;
    if (!empty($locale)) {
        setlocale(LC_ALL,$locale);
    }
}

/* find children of parents */
$children = array();
foreach ($parents as $parent) {
    $pchildren = $modx->getChildIds($parent, $depth);
    if (!empty($pchildren)) $children = array_merge($children, $pchildren);
}
if (!empty($children)) $parents = array_merge($parents, $children);

/* get filter format */
$dateEmpty = empty($dateFormat);
$sqlDateFormat = \'%Y\';
if ($dateEmpty) $dateFormat = \'%Y\';
if ($useMonth) {
    if ($dateEmpty) $dateFormat = \'%B \'.$dateFormat;
    $sqlDateFormat = \'%b \'.$sqlDateFormat;
}
if ($useDay) {
    if ($dateEmpty) $dateFormat = \'%d \'.$dateFormat;
    $sqlDateFormat = \'%d \'.$sqlDateFormat;
}
/* build query */
$c = $modx->newQuery(\'modResource\');
$fields = $modx->getSelectColumns(\'modResource\',\'\',\'\',array(\'id\',$sortBy));
$c->select($fields);
$c->select(array(
    \'FROM_UNIXTIME(\'.$sortBy.\',"\'.$sqlDateFormat.\'") AS \'.$modx->escape(\'date\'),
    \'FROM_UNIXTIME(\'.$sortBy.\',"\'.$sqlDateFormat.\'") AS \'.$modx->escape(\'date\'),
    \'FROM_UNIXTIME(\'.$sortBy.\',"%D") AS \'.$modx->escape(\'day_formatted\'),
    \'COUNT(\'.$modx->escape(\'id\').\') AS \'.$modx->escape(\'count\'),
));
$c->where(array(
    \'parent:IN\' => $parents,
    \'published\' => true,
    \'deleted\' => false,
));
/* don\'t grab unpublished resources */
$c->where(array(
    \'published\' => true,
));
if ($hideContainers) {
    $c->where(array(
        \'isfolder\' => false,
    ));
}
if (!empty($where)) {
    $where = $modx->fromJSON($where);
    $c->where($where);
}
$exclude = $modx->getOption(\'exclude\',$scriptProperties,\'\');
if (!empty($exclude)) {
    $c->where(array(
        \'id:NOT IN\' => is_array($exclude) ? $exclude : explode(\',\',$exclude),
    ));
}
$c->sortby(\'FROM_UNIXTIME(`\'.$sortBy.\'`,"%Y") \'.$sortDir.\', FROM_UNIXTIME(`\'.$sortBy.\'`,"%m") \'.$sortDir.\', FROM_UNIXTIME(`\'.$sortBy.\'`,"%d") \'.$sortDir,\'\');
$c->groupby(\'FROM_UNIXTIME(`\'.$sortBy.\'`,"\'.$sqlDateFormat.\'")\');
/* if limiting to X records */
if (!empty($limit)) { $c->limit($limit,$start); }
$resources = $modx->getIterator(\'modResource\',$c);

/* iterate over resources */
$output = array();
$groupByYearOutput = array();
$idx = 0;
$count = count($resources);
/** @var modResource $resource */
foreach ($resources as $resource) {
    $resourceArray = $resource->toArray();

    $date = $resource->get($sortBy);
    $dateObj = strtotime($date);

    $resourceArray[\'date\'] = strftime($dateFormat,$dateObj);
    $resourceArray[\'month_name_abbr\'] = strftime(\'%b\',$dateObj);
    $resourceArray[\'month_name\'] = strftime(\'%B\',$dateObj);
    $resourceArray[\'month\'] = strftime(\'%m\',$dateObj);
    $resourceArray[\'year\'] = strftime(\'%Y\',$dateObj);
    $resourceArray[\'year_two_digit\'] = strftime(\'%y\',$dateObj);
    $resourceArray[\'day\'] = strftime(\'%d\',$dateObj);
    $resourceArray[\'weekday\'] = strftime(\'%A\',$dateObj);
    $resourceArray[\'weekday_abbr\'] = strftime(\'%a\',$dateObj);
    $resourceArray[\'weekday_idx\'] = strftime(\'%w\',$dateObj);

    /* css classes */
    $resourceArray[\'cls\'] = $cls;
    if ($idx % 2) { $resourceArray[\'cls\'] .= \' \'.$altCls; }
    if ($idx == 0 && !empty($firstCls)) { $resourceArray[\'cls\'] .= \' \'.$firstCls; }
    if ($idx+1 == $count && !empty($lastCls)) { $resourceArray[\'cls\'] .= \' \'.$lastCls; }

    /* setup GET params */
    $params = array();
    $params[$filterPrefix.\'year\'] = $resourceArray[\'year\'];

    /* if using month filter */
    if ($useMonth) {
        $params[$filterPrefix.\'month\'] = $resourceArray[\'month\'];
    }
    /* if using day filter (why you would ever is beyond me...) */
    if ($useDay) {
        $params[$filterPrefix.\'day\'] = $resourceArray[\'day\'];
        if (empty($scriptProperties[\'dateFormat\'])) {
            $resourceArray[\'date\'] = $resourceArray[\'month_name\'].\' \'.$resourceArray[\'day\'].\', \'.$resourceArray[\'year\'];
        }
    }

    if ($useFurls) {
        $params = implode(\'/\',$params);
        if (!empty($extraParams)) $params .= \'?\'.$extraParams;
        $resourceArray[\'url\'] = $modx->makeUrl($target).$params;
    } else {
        $params = http_build_query($params);
        if (!empty($extraParams)) $params .= \'&\'.$extraParams;
        $resourceArray[\'url\'] = $modx->makeUrl($target,\'\',$params);
    }

    if ($groupByYear) {
        $groupByYearOutput[$resourceArray[\'year\']][] = $resourceArray;
    } else {
        $output[] = $archivist->getChunk($tpl,$resourceArray);
    }

    $idx++;
}

if ($groupByYear) {
    $wrapperTpl = $modx->getOption(\'yearGroupTpl\',$scriptProperties,\'yeargroup\');
    $wrapperRowSeparator = $modx->getOption(\'yearGroupRowSeparator\',$scriptProperties,"\\n");
    if (strtolower($sortYear) === \'asc\') {
        ksort($groupByYearOutput);
    } else {
        krsort($groupByYearOutput);
    }
    foreach ($groupByYearOutput as $year => $row) {
        $wrapper[\'year\'] = $year;

        $params = array();
        $params[$filterPrefix.\'year\'] = $year;

        if ($useFurls) {
            $params = implode(\'/\',$params);
            if (!empty($extraParams)) $params .= \'?\'.$extraParams;
            $wrapper[\'url\'] = $modx->makeUrl($target).$params;
        } else {
            $params = http_build_query($params);
            if (!empty($extraParams)) $params .= \'&\'.$extraParams;
            $wrapper[\'url\'] = $modx->makeUrl($target,\'\',$params);
        }

        $wrapper[\'row\'] = array();
        foreach ($row as $month) {
            $wrapper[\'row\'][] = $archivist->getChunk($tpl,$month);
        }
        $wrapper[\'row\'] = implode($wrapperRowSeparator,$wrapper[\'row\']);
        $output[] = $archivist->getChunk($wrapperTpl,$wrapper);
    }
}

/* output or set to placeholder */
$outputSeparator = $modx->getOption(\'outputSeparator\',$scriptProperties,"\\n");
$output = implode($outputSeparator,$output);
$toPlaceholder = $modx->getOption(\'toPlaceholder\',$scriptProperties,false);
if (!empty($toPlaceholder)) {
    $modx->setPlaceholder($toPlaceholder,$output);
    return \'\';
}
return $output;',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
        ),
      ),
    ),
    'modTemplateVar' => 
    array (
    ),
  ),
);
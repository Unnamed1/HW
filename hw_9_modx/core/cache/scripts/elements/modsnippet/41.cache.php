<?php  return 'if(isset($_GET[\'arc_year\']) && isset($_GET[\'arc_month\'])){
    if(empty($_GET[\'arc_year\']) || empty($_GET[\'arc_month\'])){
        header(\'Location: /\');
        exit();
    }
    switch($_GET[\'arc_month\']){
        case \'01\': return \'января \'.$_GET[\'arc_year\'].\' года\';
        case \'02\': return \'февраля \'.$_GET[\'arc_year\'].\' года\';
        case \'03\': return \'марта \'.$_GET[\'arc_year\'].\' года\';
        case \'04\': return \'апреля \'.$_GET[\'arc_year\'].\' года\';
        case \'05\': return \'мая \'.$_GET[\'arc_year\'].\' года\';
        case \'06\': return \'июня \'.$_GET[\'arc_year\'].\' года\';
        case \'07\': return \'июля \'.$_GET[\'arc_year\'].\' года\';
        case \'08\': return \'августа \'.$_GET[\'arc_year\'].\' года\';
        case \'09\': return \'сентября \'.$_GET[\'arc_year\'].\' года\';
        case \'10\': return \'октября \'.$_GET[\'arc_year\'].\' года\';
        case \'11\': return \'ноября \'.$_GET[\'arc_year\'].\' года\';
        case \'12\': return \'декабря \'.$_GET[\'arc_year\'].\' года\';
    }
}
else{
    header(\'Location: /\');
    exit();
}
return;
';
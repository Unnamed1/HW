<?php
if(isset($_GET['tag'])){
    if(empty($_GET['tag'])){
        header('Location: /');
        exit();
    }
    return $_GET['tag'];
}
else{
    header('Location: /');
    exit();
}
return;

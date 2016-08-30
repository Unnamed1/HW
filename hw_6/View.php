<?php
Class View{
	public $twig;
	public function __construct(){
		$loader=new Twig_Loader_Filesystem('view');
		$this->twig=new Twig_Environment($loader);
	}
}
?>
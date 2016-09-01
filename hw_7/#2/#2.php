<?php
use Illuminate\Database\Capsule\Manager as Capsule;
if(!Capsule::schema()->hasTable('catalogues')){
	Capsule::schema()->create('catalogues', function($table){
		$table->bigIncrements('catalogues_id');
		$table->string('catalogues_name', 255)->unique();
	});
}
if(!Capsule::schema()->hasTable('products')){
	Capsule::schema()->create('products', function($table){
		$table->bigIncrements('products_id');
		$table->string('products_name', 255)->unique();
		$table->integer('products_price')->unsigned();
		$table->integer('products_quantity')->unsigned();
		$table->text('products_about');
		$table->integer('catalogues_id_ref')->unsigned();
	});
}
?>
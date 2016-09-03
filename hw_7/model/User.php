<?php
class User extends Illuminate\Database\Eloquent\Model{
	protected $primaryKey='users_id';
	protected $guarded=['users_id'];
	public $timestamps=false;
}
?>
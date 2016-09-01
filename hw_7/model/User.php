<?php
class User extends Illuminate\Database\Eloquent\Model{
	protected $primaryKey='users_id';
	protected $guarded=[];
	protected $fillable=['users_name', 'users_age', 'users_about'];
	public $timestamps=false;
}
?>
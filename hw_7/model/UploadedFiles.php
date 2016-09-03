<?php
class UploadedFiles extends Illuminate\Database\Eloquent\Model{
	protected $primaryKey='uploadedFiles_id';
	protected $table='UploadedFiles';
	protected $guarded=['uploadedFiles_id'];
	public $timestamps=false;
}
?>
<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Visitor extends Model {
	public $timestamps = true;
	protected $table = 'er_visitors';
	protected $primaryKey = 'vis_id';
	protected $fillable = ['vis_code', 'vis_fname', 'vis_mname', 'vis_lname', 'vis_email', 'vis_gsm', 'vis_enabled', 'gender_id', 'region_id', 'civil_id', 'vis_barangay', 'vis_municipality', 'vis_province', 'vis_address', 'vis_age', 'class_id'];
	// public function getVisCreatedAttribute(){
	// 	return date('m/d/Y H:i:s', strtotime($this->attributes['vis_created']));
	// }

	// public function setVisCreatedAttribute($value){
	// 	$this->attributes['vis_created'] = $value;
	// }

	// public function getVisLastmodifiedAttribute(){
	// 	return date('m/d/Y H:i:s', strtotime($this->attributes['vis_lastmodified']));
	// }

	// public function setVisLastmodifiedAttribute($value){
	// 	$this->attributes['vis_lastmodified'] = $value;
	// }

}

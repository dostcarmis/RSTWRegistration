<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class CounterVisitor extends Model {
	public $timestamps 		= true;
	protected $table 		= 'er_counter_visitors';
	protected $primaryKey 	= 'counterv_id';
	protected $fillable 	= ['vis_id', 'counter_id'];

	 public function getCounterVCreatedAttribute(){
	 	return date('m/d/Y H:i:s', strtotime($this->attributes['counterv_created']));
	 }

	 public function setCounterVCreatedAttribute($value){
	 	$this->attributes['counterv_created'] = $value;
	 }

	 public function getCounterVLastmodifiedAttribute(){
	 	return date('m/d/Y H:i:s', strtotime($this->attributes['counterv_lastmodified']));
	 }

	 public function setCounterVLastmodifiedAttribute($value){
	 	$this->attributes['counterv_lastmodified'] = $value;
	 }
}

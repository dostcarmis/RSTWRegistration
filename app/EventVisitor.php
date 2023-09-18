<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class EventVisitor extends Model {
	public $timestamps = true;
	protected $table = 'er_event_visitors';
	protected $primaryKey = 'evis_id';
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

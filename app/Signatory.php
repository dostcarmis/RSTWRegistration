<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Signatory extends Model {

	protected $table = 'cm_signatories';
	protected $primaryKey = 'sig_id';


	public function getSignatoryCreatedAttribute(){
		return date('m/d/Y H:i:s', strtotime($this->attributes['sig_created']));
	}

	public function setSignatoryCreatedAttribute($value){
		$this->attributes['sig_created'] = $value;
	}

}

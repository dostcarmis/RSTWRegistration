@extends('layouts.master_layout')
@section('content')
<?php

/*
$rights = \App\UserRight::all();
$ugrs = \App\UserGroupRight::where('ug_id', $id)->get();

$current = array();
foreach ($ugrs as $ugr){
	$item = 'ur'.$ugr->ur_id;
	if ($ugr->ugr_view == 1){
		$current[$item.'_view'] = $ugr->ugr_view;
	}
	if ($ugr->ugr_add == 1){
		$current[$item.'_add'] = $ugr->ugr_add;
	}
	if ($ugr->ugr_edit == 1){
		$current[$item.'_edit'] = $ugr->ugr_edit;
	}
	if ($ugr->ugr_delete == 1){
		$current[$item.'_delete'] = $ugr->ugr_delete;
	}
	if ($ugr->ugr_approve == 1){
		$current[$item.'_approve'] = $ugr->ugr_approve;
	}
}


function right_checkbox($index, $current){
	return  (array_key_exists($index, $current) ? 1 : 0);
}

*/

?>
<div class="panel panel-default">
	<div class="panel-heading">
		<div class="clearfix">
			<h3 class="panel-title pull-left">User Groups <small>({{ ($id == 0) ? 'Add' : 'Edit' }})</small></h3>
			<div class="pull-right">
				<a class="btn btn-success btn-xs" href="{{ URL::to('usergroups') }}" title="Add" role="button"><span class="fa fa-arrow-left"></span> Back</a>
			</div>
		</div>
	</div>
	<div class="panel-body">
		{!! Form::model($row, array('name' => 'input_form', 'url' => URL::to('usergroups/'.$id.'/save'), 'class' => 'form', 'role' => 'form')) !!}
			<div class="form-group">
				{!! Form::label('ug_name', 'Name', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('ug_name') }}</small></span>
				{!! Form::text('ug_name', NULL, array('class' => 'form-control', 'maxlength' => '255', 'required')) !!}
			</div>
			<div class="checkbox">
	            <label>
	                {!! Form::checkbox('ug_is_admin', '1', NULL) !!} This is an administrative account.
	            </label>
	        </div>
		{!! Form::submit('Save' , ['class'=>'btn btn-primary btn-block']) !!}
		{!! Form::close() !!}
	</div>
	<div class="panel-footer">
	</div>
</div>
@endsection
@extends('layouts.master_layout')
@section('content')
<?php 
	$groups = \App\UserGroup::lists('ug_name', 'ug_id');

	$form_return = 0;
	if (Session::has('form_return')){
		$form_return = Session::get('form_return');
	}

?>
<div class="panel panel-default">
	<div class="panel-heading">
		<div class="clearfix">
			<h3 class="panel-title pull-left">Users <small>({{ ($id == 0) ? 'Add' : 'Edit' }})</small></h3>
			<div class="pull-right">
				<a class="btn btn-success btn-xs" href="{{ URL::to('users') }}" title="Add" role="button"><span class="fa fa-arrow-left"></span> Back</a>
			</div>
		</div>
	</div>
	<div class="panel-body">
		{!! Form::model($row, array('name' => 'input_form', 'url' => URL::to('users/'.$id.'/save'), 'class' => 'form', 'role' => 'form')) !!}

			<div class="form-group">
				{!! Form::label('ug_id', 'User Group', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('ug_id') }}</small></span>
				{!! Form::select('ug_id', $groups, NULL, ['class'=>'form-control input-sm']) !!}
			</div>

			<div class="form-group">
				{!! Form::label('u_fname', 'First Name *', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('u_fname') }}</small></span>
				{!! Form::text('u_fname', NULL, array('class' => 'form-control input-sm', 'placeholder' => 'First Name', 'maxlength' => '255', 'required')) !!}
			</div>

			<div class="form-group">
				{!! Form::label('u_mname', 'Middle Name', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('u_mname') }}</small></span>
				{!! Form::text('u_mname', NULL, array('class' => 'form-control input-sm', 'placeholder' => 'Middle Name', 'maxlength' => '255')) !!}
			</div>

			<div class="form-group">
				{!! Form::label('u_lname', 'Last Name *', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('u_lname') }}</small></span>
				{!! Form::text('u_lname', NULL, array('class' => 'form-control input-sm', 'placeholder' => 'Last Name', 'maxlength' => '255', 'required')) !!}
			</div>

			<div class="form-group">
				{!! Form::label('u_username', 'Username *', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('u_username') }}</small></span>
				{!! Form::text('u_username', NULL, array('class' => 'form-control input-sm', 'placeholder' => 'Username', 'maxlength' => '255', 'required')) !!}
			</div>

			<div class="form-group">
				{!! Form::label('u_email', 'Email *', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('u_email') }}</small></span>
				{!! Form::email('u_email', NULL, array('class' => 'form-control input-sm', 'placeholder' => 'Email', 'maxlength' => '255')) !!}
			</div>

			<div class="form-group">
				{!! Form::label('u_gsm', 'Mobile No. *', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('u_gsm') }}</small></span>
				{!! Form::text('u_gsm', NULL, array('class' => 'form-control input-sm', 'placeholder' => 'Mobile #', 'maxlength' => '13')) !!}
				<span class="text-info">Ex: +639151231234</span>
			</div>

			<div class="form-group">
				{!! Form::label('password', 'Password '.($id == 0 ? '*' : ''), array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('password') }}</small></span>
				@if ($id == 0)
					{!! Form::password('password', array('class' => 'form-control input-sm', 'placeholder' => 'Password', 'maxlength' => '255', 'required')) !!}
				@else
					{!! Form::password('password', array('class' => 'form-control input-sm', 'placeholder' => 'Password', 'maxlength' => '255')) !!}
				@endif
			</div>

			<div class="form-group">
				{!! Form::label('password_confirmation', 'Password Confirmation '.($id == 0 ? '*' : ''), array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('password_confirmation') }}</small></span>
				@if ($id == 0)
					{!! Form::password('password_confirmation', array('class' => 'form-control input-sm', 'placeholder' => 'Password Confirmation', 'maxlength' => '255', 'required')) !!}
				@else
					{!! Form::password('password_confirmation', array('class' => 'form-control input-sm', 'placeholder' => 'Password Confirmation', 'maxlength' => '255')) !!}
				@endif
			</div>

			<div class="checkbox">
	            <label>
	                {!! Form::checkbox('u_enabled', '1', NULL) !!} Account Enabled
	            </label>
	        </div>

			@if ($id == 0)
			<div class="checkbox">
	            <label title="Check to get a new form after saving the current record.">
	                {!! Form::checkbox('form_return', '1', ($form_return == 1)) !!} Continue adding records.
	            </label>
	        </div>
	        @endif

		{!! Form::submit('Save' , ['class'=>'btn btn-primary btn-block']) !!}
		{!! Form::close() !!}
	</div>
	<div class="panel-footer">
	</div>
</div>
@endsection

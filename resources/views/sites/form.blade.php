@extends('layouts.master_layout')
@section('content')
<div class="panel panel-default">
	<div class="panel-heading">
		<div class="clearfix">
			<h3 class="panel-title pull-left">Events <small>({{ ($id == 0) ? 'Add' : 'Edit' }})</small></h3>
			<div class="pull-right">
				<a class="btn btn-success btn-xm" href="{{ URL::to('events') }}" title="Add" role="button"><span class="fa fa-arrow-left"></span> Back</a>
			</div>
		</div>
	</div>
	<div class="panel-body">
		{!! Form::model($row, array('name' => 'input_form', 'url' => URL::to('events/'.$id.'/save'), 'class' => 'form', 'role' => 'form', 'files' => true)) !!}
			<div class="form-group">
				{!! Form::label('event_title', 'Event Title *', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('event_title') }}</small></span>
				{!! Form::text('event_title', NULL, array('class' => 'form-control', 'placeholder' => 'Event Title', 'maxlength' => '255', 'required')) !!}
			</div>

			<div class="form-group">
				{!! Form::label('event_desc', 'Description', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('event_desc') }}</small></span>
				{!! Form::textarea('event_desc', NULL, array('class' => 'form-control input-sm', 'placeholder'=>'Description', 'rows' => '3')) !!}
			</div>

			<span class="input-daterange">
			<div class="form-group">
				{!! Form::label('event_from', 'Start Date', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('event_from') }}</small></span>
				{!! Form::date('event_from', NULL, array('class' => 'form-control input-sm', 'placeholder' => 'Start Date', 'maxlength' => '10' )) !!}
			</div>

			<div class="form-group">
				{!! Form::label('event_to', 'End Date', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('event_to') }}</small></span>
				{!! Form::date('event_to', NULL, array('class' => 'form-control input-sm', 'placeholder' => 'End Date', 'maxlength' => '10', 'accpet' => 'image/*')) !!}
			</div>
			</span>

			<div class="checkbox">
				<label>
					{!! Form::checkbox('event_active', 1, NULL, []) !!} Set as active event
				</label>
			</div>

			<div class="form-group">
				{!! Form::label('event_image', 'Banner', array('class' => 'control-label')) !!}
				@if(strlen($row->event_image.'') > 0)
					<a href="{{ asset('uploads/'.$row->event_image) }}" title="Current Banner" target="_blank"><img src="{{ asset('uploads/'.$row->event_image) }}" class="img-responsive form-image" alt="Current Banner"></a>
				@endif
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('event_image') }}</small></span>
				{!! Form::file('event_image', NULL, array('class' => 'form-control')) !!}
			</div>



		{!! Form::submit('Save' , ['class'=>'btn btn-primary btn-block']) !!}
		{!! Form::close() !!}
	</div>
	<div class="panel-footer">
	</div>
</div>
@endsection

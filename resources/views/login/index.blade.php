@extends('layouts.ereg_layout')
@section('content')
	<div class="container">
				<div class="panel panel-default">
					<div class="panel-heading text-center">
						<h4 class="panel-title">Please Sign-In</h4>
					</div>
					<div class="panel-body">
						@if (strlen($msg) > 0)
						<div class="alert alert-danger text-center">
							{{ $msg }}
						</div>
						@endif

						{!! Form::open(array('name' => 'input_form', 'url' => URL::to('/login'), 'class' => 'form', 'role' => 'form')) !!}

						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">Username</span>
								{!! Form::text('username', NULL, array('class' => 'form-control', 'placeholder' => 'Username', 'maxlength' => '255', 'required')) !!}
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">Password</span>
								{!! Form::password('password', array('class' => 'form-control', 'placeholder' => 'Password', 'maxlength' => '255', 'required')) !!}
							</div>
						</div>

						{!! Form::submit('Sign In' , ['class'=>'btn btn-primary btn-block']) !!}
						{!! Form::close() !!}
						
					</div>
					<div class="panel-footer"></div>
				</div>
	</div>
@endsection

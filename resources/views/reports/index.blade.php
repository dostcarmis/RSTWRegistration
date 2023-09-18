@extends('layouts.master_layout')
@section('content')
<?php

?>
<div class="panel panel-default">
    <div class="panel-heading hidden-print">
        <div class="clearfix hidden-print">
            <h3 class="panel-title pull-left">Generate Reports</h3>
            <div class="pull-right">
            </div>
        </div>
    </div>
    <div class="panel-body hidden-print">
        {!! Form::open(array('name' => 'search_form', 'url' => URL::to('barcode'), 'class'=>'form-inline', 'role' => 'form')) !!}
            <div class="form-group">
                <div class="input-group input-group-sm">
                    <a href="#" class="btn btn-default">
                        <span class="fa fa-book"></span> Visitors
                    </a>
                </div>
            </div>
            <div class="form-group">
                <div class="input-group input-group-sm">
                    <a href="#" class="btn btn-default">
                        <span class="fa fa-book"></span> Evaluations
                    </a>
                </div>
            </div>
        {!! Form::close() !!}
    </div>
    <div class="panel-footer hidden-print">
    </div>
</div>
@endsection
@extends('layouts.master_layout')
@section('content')
<?php

?>
<div class="panel panel-default">
    <div class="panel-heading hidden-print">
        @if (strlen($msg) > 0)
        <div class="alert alert-info">
            {{ $msg }}
        </div>
        @endif

        <div class="clearfix hidden-print">
            <h3 class="panel-title pull-left">Generate Barcode</h3>
            <div class="pull-right">
            </div>
        </div>
    </div>
    <div class="panel-body hidden-print">
        {!! Form::open(array('name' => 'search_form', 'url' => URL::to('barcode'), 'class'=>'form-inline', 'role' => 'form')) !!}
            <div class="form-group">

                <div class="input-group input-group-sm">
                    <span class="input-group-addon">Batch</span>
                    <input class="form-control inpu-sm" type="number" maxlength="4" name="batch" id="batch" value="{{ $batch }}" min="0" step="1">
                </div>

                <div class="input-group input-group-sm">
                    <span class="input-group-addon">Serial</span>
                    <input class="form-control inpu-sm" type="number" maxlength="4" name="serial" id="serial" value="{{ $serial }}" min="0" step="1">
                </div>

                <div class="input-group input-group-sm">
                    <span class="input-group-addon">Count</span>
                    <input class="form-control inpu-sm" type="number" maxlength="5" name="count" id="count" value="{{ $count }}" min="0" step="1">
                </div>

                <div class="input-group input-group-sm">
                    <span class="input-group-btn">
                        <input class="btn btn-default btn-sm" type="submit" value="Generate" name="search-btn" id="search-btn">
                    </span>
                </div>
            </div>
        {!! Form::close() !!}
    </div>
    <div>
    <?php 
        $b = $batch;
        $s = $serial;

        for ($i = 0; $i < $count; $i++){


            $s++;
            if ($s >= 1000){
                $b++;
                $s = 1;
            }

            $zb = str_pad($b.'',4,'0', STR_PAD_LEFT);
            $zs = str_pad($s.'',4,'0', STR_PAD_LEFT);
            $zcode = $zb.$zs;

    ?>
        <div class="barcode-wrapper" class="text-center">
            <div class="barcode-title">{{ $event->event_title }}</div>
            <div class="barcode-code"><?php echo '<img src="data:image/png;base64,'.base64_encode($gen->getBarcode($zcode, $gen::TYPE_CODE_128)).'">'; ?></div>
            <div class="barcode-number">{{ $zcode }}</div>
            <div class="barcode-footer">DOST CAR</div>
        </div>

    <?php
        }
    ?>

    </div>
    <div class="panel-footer hidden-print">
    </div>
</div>
@endsection
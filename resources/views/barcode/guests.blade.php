@extends('layouts.master_layout')
@section('content')
<?php
    $event = \App\Event::where('event_active', 1)->first();
    $event_title = "";
    if (!$event) {
        $event_title = "No Active Event!!!";
    } else {
        $event_title = $event->event_title;
    }

    $gen = new \Picqer\Barcode\BarcodeGeneratorPNG();

    $naam = '';
?>
<div class="panel panel-default">
    <div class="panel-heading hidden-print">
        @if (strlen($msg) > 0)
        <div class="alert alert-info">
            {{ $msg }}
        </div>
        @endif

        <div class="clearfix hidden-print">
            <h3 class="panel-title pull-left">Preregistration Barcodes<br>{{ $event_title }}</h3>
            <div class="pull-right">
            </div>
        </div>
    </div>
    <div>
     @foreach($rows as $row)
     <?php 
        if ($naam == $row->vis_name){

            continue;
        }

        $naam = $row->vis_name;
     ?>
        <div class="barcode-wrapper" class="text-center">
            <div class="barcode-header">{{ $event_title }}</div>
            <div class="barcode-title">{{ $row->vis_name }}</div>
            <div class="barcode-code"><?php echo '<img src="data:image/png;base64,'.base64_encode($gen->getBarcode($row->vis_code, $gen::TYPE_CODE_128)).'">'; ?></div>
            <div class="barcode-number">{{ $row->vis_code }}</div>
            <div class="barcode-footer">DOST Calabarzon {{ date('Y') }}</div>
        </div>
     @endforeach
    </div>
    <div class="panel-footer hidden-print">
    </div>
</div>
@endsection
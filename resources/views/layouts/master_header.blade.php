<!DOCTYPE html>
<html>
<head>
	<meta content="text/html; charset=UTF-8">
	<meta name="csrf-token" content="{{ csrf_token() }}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

	<title>Evaluation</title>
	<link rel="stylesheet" href="{{ asset('css/chosen.min.css') }}" type="text/css">
	<link rel="stylesheet" href="{{ asset('css/tablesorter/style.css') }}" type="text/css">
	<link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}" type="text/css">
	<link rel="stylesheet" href="{{ asset('css/bootstrap-datepicker3.css') }}" type="text/css">
	<link rel="stylesheet" href="{{ asset('css/font-awesome.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('css/roboto.css') }}" type="text/css">
	<link rel="stylesheet" href="{{ asset('css/private.css') }}" type="text/css">
	
</head>
<body>
	<div id="outer-wrapper">
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="{{ url('/') }}">EVAL</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="{{ url('events') }}" title="Events">Events</a></li>
						<li><a href="{{ url('visitors') }}" title="Visitors">Visitors</a></li>
					</ul>
				</div>
			</div>
	    </nav>
	</div>

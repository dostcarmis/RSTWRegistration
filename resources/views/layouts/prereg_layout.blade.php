<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

<!DOCTYPE html>
<html>
<head>
    <meta content="text/html" charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>E-Register</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/bootstrap-material-design.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/ripples.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/fonts.css') }}">
    <link rel="stylesheet" href="{{ asset('css/public.css') }}">
</head>
<body>
    <div id="header">
        <div class="container">
            <img src="{{ asset('images/dost_header.png') }}" class="img-responsive" alt="e-valuate">
        </div>
    </div>


	<div id="page-wrapper">
		<div id="page-middle">
			<div class="container">
		    	@yield('content')
			</div>
		</div>
	</div>
    <br>
    <br>
    <br>
    <br>
    <div id="footer">
        <div class="container text-center">
            © Copyright 2017 by DOST Calabarzon. All Rights Reserved.
        </div>
    </div>

    <script src="{{ asset('js/jquery-3.2.1.js') }}"></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/material.min.js') }}"></script>
    <script src="{{ asset('js/ripples.min.js') }}"></script>
    <script src="{{ asset('js/custom.js') }}"></script>
</body>
</html>
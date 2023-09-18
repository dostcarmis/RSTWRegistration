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
	<link rel="stylesheet" href="{{ asset('css/print.css') }}" type="text/css">
</head>
<body>

@yield('content')


    <script src="{{ asset('js/jquery-2.1.3.min.js') }}"></script>
    <script src="{{ asset('js/jquery-ui/jquery-ui.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/jquery.tablesorter.min.js') }}"></script>
    <script src="{{ asset('js/jquery.tablesorter.pager.js') }}"></script>
    <script src="{{ asset('js/chosen.jquery.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap-datepicker.js') }}"></script>
    <script src="{{ asset('js/custom.js') }}"></script>
    
</body>
</html>
<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|

Route::get('/', function () {
    return view('welcome');
});

*/

	Route::any('/', 'EregController@index');
	Route::any('register', 'EregController@index');
	Route::post('register/check', 'EregController@check_barcode');
	Route::any('register/form', 'EregController@show_form');
	Route::post('register/save', 'EregController@save');
	Route::get('register/cancel', 'EregController@cancel');
	Route::get('register/finished', 'EregController@finished');

	Route::any('/evaluate', 'EvalController@index');
	Route::post('/evaluate/check', 'EvalController@check_barcode');
	Route::any('/evaluate/form', 'EvalController@show_form');
	Route::post('/evaluate/save', 'EvalController@save');
	Route::any('/evaluate/selfie_form', 'EvalController@selfie_form');
	Route::post('/evaluate/selfie_save', 'EvalController@selfie_save');
	Route::get('/evaluate/thanks', 'EvalController@show_thanks');
	Route::get('/evaluate/cancel', 'EvalController@cancel');
	Route::get('/evaluate/finished', 'EvalController@finished');
	Route::any('/evaluate/print', 'EvalController@eval_print');


	Route::any('counterv/{id}', 'CounterVController@index');
	Route::post('counterv/{id}/add', 'CounterVController@add');

	Route::group(['middleware' => 'guest'], function(){
		Route::get('loginform', 'LoginController@login_form');
		Route::post('login', 'LoginController@login');
	});


	Route::group(['middleware' => 'auth'], function(){

		Route::get('logout', 'LoginController@logout');

        // Reports ************************************************************************
        Route::any('reports', 'ReportsController@index');

		// Barcode ************************************************************************
		Route::any('barcode', 'BarcodeController@index');
		Route::any('barcode/prereg', 'BarcodeController@prereg');

		// Users ************************************************************************
		Route::any('users', 'UsersController@index');
		Route::get('users/add', 'UsersController@add');
		Route::get('users/{id}/edit', 'UsersController@edit');
		Route::get('users/{id}/delete', 'UsersController@delete');
		Route::post('users/{id}/save', 'UsersController@save');

		// UserGroups ************************************************************************
		Route::any('usergroups', 'UserGroupsController@index');
		Route::get('usergroups/add', 'UserGroupsController@add');
		Route::get('usergroups/{id}/edit', 'UserGroupsController@edit');
		Route::get('usergroups/{id}/delete', 'UserGroupsController@delete');
		Route::post('usergroups/{id}/save', 'UserGroupsController@save');

		// Events ************************************************************************
		Route::any('events', 'EventsController@events');
		Route::get('events/add', 'EventsController@add');
		Route::get('events/{id}/edit', 'EventsController@edit');
		Route::get('events/{id}/delete', 'EventsController@delete');
		Route::post('events/{id}/save', 'EventsController@save');

		// Visitors
		Route::any('visitors', 'VisitorsController@index');
		Route::get('visitors/add', 'VisitorsController@add');
		Route::get('visitors/{id}/edit', 'VisitorsController@edit');
		Route::get('visitors/{id}/delete', 'VisitorsController@delete');
		Route::post('visitors/{id}/save', 'VisitorsController@save');
		Route::any('visitors/print', 'VisitorsController@print_list');
		Route::any('visitors/download', 'VisitorsController@download_list');

		// Sites ************************************************************************
		Route::any('sites', 'SitesController@index');
		Route::get('sites/add', 'SitesController@add');
		Route::get('sites/{id}/edit', 'SitesController@edit');
		Route::get('sites/{id}/delete', 'SitesController@delete');
		Route::post('sites/{id}/save', 'SitesController@save');


//		Route::get('visitors/alter_bcode', 'VisitorsController@change_barcodes');
		Route::get('visitors/setids', 'VisitorsController@set_visitor_id');


	});


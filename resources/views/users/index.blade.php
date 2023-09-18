@extends('layouts.master_layout')
@section('content')
<div class="panel panel-default">
	<div class="panel-heading">
		@if (strlen($msg) > 0)
		<div class="alert alert-info">
			{{ $msg }}
		</div>
		@endif
		<div class="clearfix">
			<h3 class="panel-title pull-left">Users</h3>
			<div class="pull-right">
				<a class="btn btn-success btn-xs" href="{{ URL::to('/users/add') }}" title="Add Item" role="button"><span class="fa fa-plus"></span> Add Item</a>
				@if (App\Http\Controllers\LoginController::can_access('Users', 'add'))
	        	@endif
			</div>
		</div>
	</div>
	<div class="panel-body">
		<?php 
			$groups[0] = 'All';
			foreach (\App\UserGroup::lists('ug_name', 'ug_id') as $key => $val){
				$groups[$key] = $val;
			}

		?>
		{!! Form::open(array('name' => 'search_form', 'url' => URL::to('users'), 'class'=>'form-inline', 'role' => 'form')) !!}
			<div class="form-group">
				<div class="input-group input-group-sm">
					<span class="input-group-addon">Group</span>
					{!! Form::select('qt', $groups, $qt, ['class'=>'form-control input-sm']) !!}
				</div>
			</div>

			<div class="form-group">
				<div class="input-group input-group-sm">
					<input class="form-control" type="text" maxlength="255" name="q" id="q" value="{{ $q }}">
					<span class="input-group-btn">
						<input class="btn btn-primary btn-sm" type="submit" value="Search" name="search-btn" id="search-btn">
					</span>
				</div>
			</div>
		{!! Form::close() !!}
	</div>
	<div class="table-responsive">
		<table id="grid_table" class="table table-bordered table-condensed table-striped table-hover tablesorter">
		<thead>
			<tr>
				<th>&nbsp;</th>
				<th class="text-center">#</th>
				<th class="text-center">Username</th>
				<th class="text-center">Name</th>
				<th class="text-center">Email</th>
				<th class="text-center">Mobile</th>
				<th class="text-center">Group</th>
				<th class="text-center">Enabled</th>
			</tr>
		</thead>
		<tbody>
			<?php $i = 0; ?>
		    @foreach($rows as $row)
		    <?php $i++; ?>
		    @include('users.index_row', ['row' => $row, 'i' => $i])
		    @endforeach
		</tbody>
		</table>
	</div>
	<div class="panel-footer">
		<div id="grid_pager">
            <form class="form-inline" style="text-align:center;" role="form">
                <div class="form-group form-group-sm">
                    <a class="btn btn-primary btn-sm first" title="First"><span class="glyphicon glyphicon-step-backward"></span></a>
                    <a class="btn btn-primary btn-sm prev" title="Previous"><span class="glyphicon glyphicon-backward"></span></a>
                    <input type="text" class="form-control input-sm text-center pagedisplay" disabled>
                    <a class="btn btn-primary btn-sm next" title="Next"><span class="glyphicon glyphicon-forward"></span></a>
                    <a class="btn btn-primary btn-sm last" title="Last"><span class="glyphicon glyphicon-step-forward"></span></a>
                    <select class="form-control input-sm pagesize" title="No. of items per page.">
                        <option selected="selected"  value="10">10</option>
                        <option value="20">20</option>
                        <option value="30">30</option>
                        <option  value="40">40</option>
                        <option  value="50">50</option>
                        <option  value="100">100</option>
                    </select>
                </div>
            </form>
        </div>	
	</div>
</div>
<script type="text/javascript">
var _tsOptions = {
	headers:{
		0: { sorter: false}
		}
	};
</script>
@endsection

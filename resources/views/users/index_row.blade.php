			<tr>
				<td class="nowrap text-left">

					@if (App\Http\Controllers\LoginController::can_access('Users', 'edit'))
					<a class="btn btn-primary btn-xs" href="{{ URL::to('/users/'.$row->u_id.'/edit') }}" title="Edit" role="button"><span class="fa fa-pencil"></span></a>
		        	@endif
					@if (App\Http\Controllers\LoginController::can_access('Users', 'delete'))
					<a class="btn btn-warning btn-xs" href="javascript:void(0);" onclick="confirmDialog('Delete this item?', 'Confirm Delete', '{{ URL::to('/users/'.$row->u_id.'/delete') }}');" title="Delete" role="button"><span class="fa fa-minus"></span></a>
		        	@endif

				</td>
				<td class="text-center">{{ $i }}</td>
				<td>{{ $row->u_username }}</td>
				<td>{{ $row->u_name }}</td>
				<td>{{ $row->u_email }}</td>
				<td>{{ $row->u_gsm }}</td>
				<td>{{ $row->ug_name }}</td>
				<td class="text-center">{!! (($row->u_enabled == 0) ? '' : '<span class="fa fa-check"></span>')  !!}</td>
			</tr>
			<tr>
				<td class="nowrap text-left">
					@if (App\Http\Controllers\LoginController::can_access('UserGroups', 'edit'))
					<a class="btn btn-primary btn-xs" href="{{ URL::to('/usergroups/'.$row->ug_id.'/edit') }}" title="Edit" role="button"><span class="fa fa-pencil"></span></a>
		        	@endif
					@if (App\Http\Controllers\LoginController::can_access('UserGroups', 'delete'))
					<a class="btn btn-warning btn-xs" href="javascript:void(0);" onclick="confirmDialog('Delete this item?', 'Confirm Delete', '{{ URL::to('/usergroups/'.$row->ug_id.'/delete') }}');" title="Delete" role="button"><span class="fa fa-minus"></span></a>
		        	@endif
				</td>
				<td class="text-center">{{ $i }}</td>
				<td>{{ $row->ug_name }}</td>
			</tr>

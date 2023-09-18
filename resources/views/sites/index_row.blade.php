			<tr>
				<td class="nowrap text-left">
					<a class="btn btn-primary btn-xs" href="{{ URL::to('/sites/'.$row->site_id.'/edit') }}" title="Edit" role="button"><span class="fa fa-pencil"></span></a>
					<!-- <a class="btn btn-warning btn-xs" href="javascript:void(0);" onclick="confirmDialog('Delete this item?', 'Confirm Delete', '{{ URL::to('/sites/'.$row->site_id.'/delete') }}');" title="Delete" role="button"><span class="fa fa-minus"></span></a> -->
				</td>
				<td class="text-center">{{ $i }}</td>
				<td>{{ $row->site_name }}</td>

			</tr>

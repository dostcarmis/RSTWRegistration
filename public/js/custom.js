var _url = '';

$(document).ready(function(e) {
	Date.format = 'mm/dd/yyyy';

	// Checkbox & Radio handling
	if ($("input[name=eval_rating_overall]").length){
		$("input[name=eval_rating_overall]").addClass("hidden-input");

		if ($('.eval-rate-label').length){
			$('.eval-rate-label').click(function(){
				$(this).addClass("selected-input").siblings().removeClass("selected-input");
			});
		}
	}
	
	if ($("input[name=eval_firsttime]").length){
		$("input[name=eval_firsttime]").addClass("hidden-input");

		if ($('.eval-firsttime-label').length){
			$('.eval-firsttime-label').click(function(){
				$(this).addClass("selected-input").siblings().removeClass("selected-input");
			});
		}
	}

	if ($('input[name=eval-ref\\[\\]]').length){
		//alert('hiding checkboxes');
		$('input[name=eval-ref\\[\\]]').addClass("hidden-input");

		if ($('.eval-ref-label').length){
			$('.eval-ref-label').click(function(){
				if($(this).hasClass("selected-input")){
					$(this).removeClass("selected-input");
				} else {
					$(this).addClass("selected-input");
				}	
			});
		}
	}

	if ($('#eval-form').length){
		$('#eval-form').submit(function (e){
			var s = '';

			if ($('input[name=eval_firsttime]:checked').val() == null){
				s = 'Please answer the 1st question.\n';
			}

			if ($('input[name=eval-ref\\[\\]]:checked').length == 0){
				s += 'Please answer the 2nd question.\n';
			}

			if ($('input[name=eval_rating_overall]:checked').val() == null){
				s += 'Please rate this event.\n';
			}

			if (s.length > 0){
				alert(s);
				e.preventDefault();
			}

		});
	}

	// Barcode Scanning *************************************************************************************************

	if ($("#barcode-eval").length){

		$("#barcode-eval").blur(function(){
			setTimeout(function(){ $("#barcode-eval").focus(); }, 0);
		});

		$("#barcode-eval").keypress(function (e){
			if (e.which == 13){
				if ($("#barcode-form").length){
					$("form#barcode-form").submit();
				}
				return false;
			}
		} );

		$("#barcode-eval").focus();
	}

	// table sorters *************************************************************************************************
	
	if ($("#grid_table").length){
		if ($("#grid_pager").length){
    		$("#grid_table").tablesorter(_tsOptions).tablesorterPager({container: $("#grid_pager"), positionFixed: false, size:50});
    	} else {
    		$("#grid_table").tablesorter(_tsOptions);
    	}
	}

	if ($(".grid_table").length){
   		$(".grid_table").tablesorter(_tsOptions);
	}

	// confirm dialog *********************************************

	if ($("#confirm-btn-yes").length){
		$("#confirm-btn-yes").click(function(){
			window.location.href = _url;
		});
	}

	// popovers ***************************************************

	if ($('[data-toggle="popover"]').length){
		$('[data-toggle="popover"]').popover();

	}

	// chosen *************************************************************************************************
	if ($(".chosen-select").length){
		$(".chosen-select").chosen();
	}

	// date pickers *************************************************************************************************
	if ($(".date-picker").length){
		$(".date-picker").datepicker({
			dateFormat: 'mm/dd/yyyy'
		});
	}

	if ($(".input-daterange").length){
		$(".input-daterange").datepicker({
			dateFormat: 'mm/dd/yyyy'
		});
	}


	// attendance *************************************************************************************************
	if ($('.grid-menuitem-checkall').length){
		$('.grid-menuitem-checkall').click(function (){
			checkAllInGrid();
		});
	}

	if ($('.grid-menuitem-uncheckall').length){
		$('.grid-menuitem-uncheckall').click(function (){
			uncheckAllInGrid();
		});
	}



	// validation *************************************************************************************************************
	/*
	if ($("#edit-form").length){
		$("#edit-form").submit(function() {}).validate(_rules);
	}
	*/

	// datepicker in chuinky *************************************************************************************************
	/*
	if ( ($("#from_date_time").length) && ($("#to_date_time").length)){
		$("#from_date_time, #to_date_time").datePicker({ clickInput:true, startDate:'01/01/1970' });
	}
	*/

	/*
	if ($('.grid-menuitem-markattended').length){
		$('.grid-menuitem-markattended').click(function (){
			res = getAllChecked();
			//if (res.length == 0) return;
			if ($('#edit-modal').length){
				$('#edit-modal').modal('show');
			}
		});
	}
	*/

	// google maps

	if ($('#map').length){
		var map = new google.maps.Map(document.getElementById('map'), {
		    zoom: 17,
		    center: new google.maps.LatLng(13.762486565384666, 121.22312593455717),
		    mapTypeId: google.maps.MapTypeId.ROADMAP,
		    
		});

		var infowindow = new google.maps.InfoWindow();
		var marker, i;
		for (i = 0; i < _locations.length; i++) {  
		        marker = new google.maps.Marker({
		        position: new google.maps.LatLng(_locations[i][1], _locations[i][2]),
		        map: map,
		        icon: 'http://labs.google.com/ridefinder/images/mm_20_blue.png'
		        
		    });
		  
		    google.maps.event.addListener(marker, 'mouseover', (function(marker, i) {
		        return function() {
		            infowindow.setContent(_locations[i][0]);
		            infowindow.open(map, marker);
		            google.maps.event.addListener(marker, 'click', (function(marker, i) {
		                return function() {
		                    if (i > _max_points) return;
		                    location.href = _href[i];
		                }
		            })(marker, i));
		        }
		    })(marker, i));
		}
	}

	
	if ($("#map-location-picker").length){
		var map_picker = new google.maps.Map(document.getElementById('map-location-picker') , {
		    zoom: 17,
		    center: new google.maps.LatLng(_latitude, _longitude),
		    mapTypeId: google.maps.MapTypeId.ROADMAP,
		    
		});

		google.maps.event.addListener(map_picker, 'click', function(event){
			$("#longitude").val(event.latLng.lng());
			$("#latitude").val(event.latLng.lat());
		});

		/*
		google.maps.event.addListener(map_picker, 'mousemove', function(event){
			$("#longitude").val(event.latLng.lng());
			$("#latitude").val(event.latLng.lat());
		});

*/

	}

	// delete dialog *********************************************

	if ($("#btn-delete-yes").length){
		$("#btn-delete-yes").click(function(){
			window.location.href = _url;
		});
	}

});

function confirmDelete(url){
	_url = url;
	$('#delete-modal').modal('show');
}


function confirmDialog(msg, title, url){
	_url = url;
	
	if ($('#confirm-modal-title').length){
			$('#confirm-modal-title').html(title);
	}

	if ($('#confirm-modal-message').length){
			$('#confirm-modal-message').html(msg);
	}

	if ($('#confirm-modal').length){
		$('#confirm-modal').modal('show');
	}
}
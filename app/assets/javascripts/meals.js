$(document).on('page:change ready', function(){
meal_map();
upvote();
locate_all_map();
auto_complete_allmap()
locate_tool_tip()

$('#locate_current').click(function(){
	geo_locate();
})


		function meal_map(){
				$(".meal_map").gmap3({
					marker:{
						address: "San Francisco, CA"
					},
					map:{
						options:{
							zoom:13
						}
					}
				});
				}

		function upvote() {
				var upvotes = $('#upvotes').attr('data-upvotes');
				var color = '';

				if (upvotes > 89 && upvotes <= 100) {
					color = "green";
				} else if (upvotes > 79 && upvotes <= 89) {
					color = "blue";
				} else if (upvotes > 69 && upvotes <= 79) {
					color = "purple";
				} else if (upvotes > 59 && upvotes <= 69) {
					color = "black";
				} else if (upvotes > 49 && upvotes <= 59) {
					color = "orange";
				} else {
					color = "red";
				}

				$('#upvotes').css("color", color);
			}


		});

		function locate_all_map(){
	        $('#map_all').gmap3({ 
	          map:{
			    options:{
			      center:[37.578498,-122.457275],
			      zoom: 10
			    }
			  },
			  marker:{
			    values:[
			      // {latLng:[48.8620722, 2.352047], data:"Paris !"},
			      {address:"86000 Poitiers, France", data:"Poitiers : great city !"},
			      {address:"66000 Perpignan, France", data:"Perpignan ! GO USAP !", options:{icon: "http://maps.google.com/mapfiles/marker_green.png"}}
			    ],
			    options:{
			      draggable: false
			    },
			    events:{
			      mouseover: function(marker, event, context){
			        var map = $(this).gmap3("get"),
			          infowindow = $(this).gmap3({get:{name:"infowindow"}});
			        if (infowindow){
			          infowindow.open(map, marker);
			          infowindow.setContent(context.data);
			        } else {
			          $(this).gmap3({
			            infowindow:{
			              anchor:marker, 
			              options:{content: context.data}
			            }
			          });
			        }
			      },
			      mouseout: function(){
			        var infowindow = $(this).gmap3({get:{name:"infowindow"}});
			        if (infowindow){
			          infowindow.close();
			        }
			      }
			    }
			  }
			});
		}

		function auto_complete_allmap(){

			$("#locate_all_address").autocomplete({
                source: function() {
                    $("#map_all").gmap3({
                        getaddress: {
                            address: $(this).val(),
                            callback: function(results){
                                if (!results) return;
                                $("#locate_all_address").autocomplete("display", results, false);
                            }
                        }
                    });
                },
                cb:{
                    cast: function(item){
                        return item.formatted_address;
                    },
                    select: function(item) {
                        $("#map_all").gmap3({
                            clear: "marker",
                            marker: {
                                latLng: item.geometry.location
                            },
                            map:{
                                options: {
                                    center: item.geometry.location,
                                    zoom: 10
                                }
                            }
                        });
                    }
                }
            })
            .focus();
        
        }

     	function geo_locate(){
		    $('#map_all').gmap3({
	          getgeoloc:{
	            callback : function(latLng){
	              if (latLng){
	                $('#map_all_result').html('localised !');
	                $(this).gmap3({
	                  marker:{ 
	                    latLng:latLng
	                  },
	                  map:{
	                        options: {
	                            center: latLng,
	                            zoom: 15
	                        }
	                    }
	                });
	              } else {
	                $('#map_all_result').html('not localised !');
	              }
	            }
	          }
	        });
        
      }

        function locate_tool_tip(){
			    $(function() {
			    $("#locate_all_address" ).tooltip();
			    $("#locate_current").tooltip();
			  });
        }

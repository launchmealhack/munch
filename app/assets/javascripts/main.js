$(document).on('page:change ready', function(){
	$('#menu').sidr();
	$('.tile').click(function(){
		$(this).fadeOut();
	});
});
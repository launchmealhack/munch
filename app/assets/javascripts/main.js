$(document).on('page:change ready', function(){
	$('#menu').sidr();

    $('.arrow').click(function(){
    $(this).parent('.card').addClass('flipped').click(function(){
    	$(this).removeClass('flipped');
    });
    
    return false;
    });





});
	

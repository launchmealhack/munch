$(document).on('page:change ready', function(){
	$('#menu').sidr();

    $('.arrow').click(function(){
    $(this).parent('.card').addClass('flipped').click(function(){
    	$(this).removeClass('flipped');
    });
    
    return false;
    });

    $('#review_form_container').hide();

    $('.rate button').click(function() {
    	var vote = '';

    	if ($(this).attr('id') == 'up') {
    		vote = 0;
    	} else {
    		vote = 1;
    	}

    	$.post(
    		$('.rate_vote').attr('action'),
    		{vote: vote},
	    	function(){
	    		$('.meal_thumb').click(function(){
	    		$('#review_form_container').slideDown();
	    	})
	    });
	    return false;
    });

});
	

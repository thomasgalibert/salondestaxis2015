jQuery(function( $ ) {
	var starting_position = $('#nav').outerHeight( true );
 
	$(window).scroll(function() {
		var yPos = ( $(window).scrollTop() );
		if( yPos > starting_position && window.innerWidth > 800 ) { // show sticky menu after these many (starting_position) pixels have been scrolled down from the top and only when viewport width is greater than 500px.
			$("#nav-secondary").fadeIn();
		} else {
			$("#nav-secondary").fadeOut();
		}
	});
});
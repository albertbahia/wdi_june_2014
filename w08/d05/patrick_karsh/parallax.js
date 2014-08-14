$(document).ready(function(){
	console.log("Loaded, bro");

	$(window).scroll(function() {
		var scrolled = $(window).scrollTop(); 
		$('.bg').css('top', -(scrolled * .25)); 
	

	$('.top_left').css('top', (scrolled * .5));
	$('.top_center').css('left', (scrolled * .6));
	$('.top_right').css('right', (scrolled * .8));
	
	$('.bottom_left').css('top', (scrolled * .8));
	$('.bottom_center').css('top', (scrolled * .7));
	$('.bottom_right').css('top', (scrolled * .4));
	})
})
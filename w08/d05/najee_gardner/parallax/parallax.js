$(document).ready(function(){
	console.log("Loaded, bro");

	$(window).on('scroll', function() {
		var scrolled = $(window).scrollTop();
		$('.bg').css('top', -(scrolled * .1));

		$('.top-left').css('top', (scrolled * .6));
		$('.top-center').css('top', (scrolled * .6));
		$('.top-right').css('top', (scrolled * .6));

		$('.bottom-left').css('top', (scrolled * .6));
		$('.bottom-center').css('top', (scrolled * .6));
		$('.bottom-right').css('top', (scrolled * .6));
	});
});

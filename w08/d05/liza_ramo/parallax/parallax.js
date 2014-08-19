$(document).ready(function(){
	console.log("Oh, hai.");

	$(window).scroll(function() {
		var scrolled = $(window).scrollTop();
		$('.bg').css('top', -(scrolled * .25));

		$('.top-left').css('top', (scrolled * .6));
		$('.top-center').css('top', (scrolled * .4))
										.css('transform', 'rotate('+ (scrolled * .5) + 'deg)');
		$('.top-right').css('top', (scrolled * .9));

		$('.bottom-left').css('top', (scrolled * .2));
		$('.bottom-center').css('top', (scrolled * .5))
												.css('transform', 'rotate('+ (scrolled * .5) + 'deg)');
		$('.bottom-right').css('top', (scrolled * .4));
	});
})

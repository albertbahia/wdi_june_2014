$(document).ready(function(){
	console.log("Loaded, bro");
	$(window).scroll(function() {
	  var scrolled = $(window).scrollTop();
		$('.bg').css("top", -(scrolled * .25));

		$('.top-left').css('top', (scrolled * .6));
		$('.top-center').css('top', (scrolled * .4));
		$('.top-right').css('top', (scrolled * .8));

		$('.bottom-left').css('top', (scrolled * .6));
		$('.bottom-center').css('bottom', (scrolled * .4)).css('transform', 'rotate('+ (scrolled * .5) + 'deg)');
		$('.bottom-right').css('top', (scrolled * .5));
	})
})

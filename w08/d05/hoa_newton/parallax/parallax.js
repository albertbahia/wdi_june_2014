$(document).ready(function(){
	console.log("Loaded, bro");

	$(window).on('scroll', function(){
		// console.log($(window).scrollTop());
		var scrolled = $(window).scrollTop();
		$('.bg').css('top', -(scrolled * .25));
		$('.top-left').css('left', (scrolled * .6));
		$('.top-center').css('top', (scrolled * .4))
		.css('transform', 'rotate('+ scrolled * .5 + 'deg)');;
		$('.top-right').css('right', (scrolled * .8));

		$('.bottom-left').css('right', (scrolled * .2));
		$('.bottom-center').css('bottom', (scrolled * .5))
		.css('transform', 'rotateY('+ scrolled * .5 + 'deg)');
		$('.bottom-right').css('left', (scrolled * .4))
		.css('transform', 'rotateX('+ scrolled * .3 + 'deg)');
	})


})
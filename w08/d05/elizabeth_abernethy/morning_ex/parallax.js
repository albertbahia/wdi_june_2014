$(document).ready(function(){
	console.log("Loaded, bro");

	$(window).scroll(function() {
		var scrolled = $(window).scrollTop();
		$('.bg').css('top', -(scrolled * 0.25));

		$('.top-left').css('top', (scrolled * .6))
					.css('transform', 'rotateY(' + (scrolled * .7) + 'deg)');
		$('.top-center').css('left', (scrolled * .4));
		$('.top-right').css('right', (scrolled * .8))
					.css('transform', 'rotateX(' + (scrolled * .3) + 'deg)');

		$('.bottom-left').css('right', (scrolled * .2));
		$('.bottom-center').css('bottom', (scrolled * .5))
					.css('transform', 'rotate(' + (scrolled * .5) + 'deg)');
		$('.bottom-right').css('left', (scrolled * .4));

	});
})

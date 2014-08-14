$(document).ready(function(){
	console.log("Loaded, bro");

	$(window).scroll(function(){
			var scrolled = $(window).scrollTop();
			$('.bg').css('top:', -(scrolled * .25));

			$('.top-left').css('top', (scrolled * .6));
			$('.top-center').css('left', (scrolled * .4));
			$('.top-right').css('right', (scrolled * .8));

			$('.bottom-left').css('top', (scrolled * .3));
			$('.bottom-center').css('top', (scrolled * .1)).css('transform', 'rotateY('+(scrolled * .4) + 'deg)');
			$('.bottom-right').css('top', (scrolled * .7));
	});
})

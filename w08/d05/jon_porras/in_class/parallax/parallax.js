$(document).ready(function(){
	console.log("Loaded, bro");

	$(window).scroll(function() {

		var scrolled = $(window).scrollTop();

		$('.bg').css('top', -(scrolled * .25));

		$('.top-left').css('top', (scrolled * .6));
		$('.top-center').css('top', -(scrolled * .2));
		$('.top-right').css('top', -(scrolled * .8));

		// $('.bottom-left').css('top', (scrolled * .2))
		// 									.css('transform', "rotateY('+(scrolled * .5) + ')")
		console.log($('.top-left'));
	});

});

var scrollTop = $('.bg').scrollTop();

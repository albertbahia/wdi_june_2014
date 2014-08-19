$(document).ready(function(){
	console.log("Loaded, bro");

	$(window).on('scroll', scrolling);
})


function scrolling() {
	var scrolled = $(window).scrollTop();

	var topByScroll = scrolled * -0.25;
	$('.bg').css({'top': topByScroll});

	var kittehOneTop = scrolled * 0.99;
	$('.top-left').css({'top': kittehOneTop});

	var kittehTwoTop = scrolled * 0.85;
	$('.top-center').css({'top': kittehTwoTop});

	var kittehThreeTop = scrolled * 0.89;
	$('.top-right').css({'bottom': kittehThreeTop})
		.css('transform', 'rotate('+ scrolled * 0.5 + 'deg)');

	var puppieOneTop = scrolled * 0.8;
	$('.bottom-left').css({'left': puppieOneTop});

	var puppieTwoTop = scrolled * 0.15;
	$('.bottom-center').css({'top': puppieTwoTop})
	.css('transform', 'rotate('+ scrolled * 0.5 + 'deg)');

	var puppieThreeTop = scrolled * 0.8;
	$('.bottom-right').css({'right': puppieThreeTop});
};

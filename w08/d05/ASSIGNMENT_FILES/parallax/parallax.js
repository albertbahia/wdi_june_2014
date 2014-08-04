$(document).ready(function(){
	console.log("Loaded, bro");
	$(window).on('scroll', scrollEvent);

function scrollEvent() {
	var scrolled = $(window).scrollTop();
	$('.bg').css('top', -(scrolled * 0.25));

	$('.top-left').css('top', (scrolled * 0.6)).css('transform', 'rotateX('+ (scrolled * 0.7) + 'deg)');
	$('.top-center').css('top', (scrolled * 0.4)).css('transform', 'rotateY('+ (scrolled * 0.9) + 'deg)');
	$('.top-right').css('top', (scrolled * 0.8)).css('transform', 'rotate('+ (scrolled * 0.6) + 'deg)');

	$('.bottom-left').css('top', (scrolled * 0.2)).css('transform', 'rotateY('+ (scrolled * 0.5) + 'deg)');
	$('.bottom-center').css('top', (scrolled * 0.5)).css('transform', 'rotateX('+ (scrolled * 0.8) + 'deg)');
	$('.bottom-right').css('top', (scrolled * 0.4)).css('transform', 'rotate('+ (scrolled * 0.4) + 'deg)');
	}

});

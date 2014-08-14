$(document).ready(function(){
	console.log("Loaded, bro");
	$(window).scroll(function(){
		parallax();
	});
});

function parallax() {
	console.log("scrolling!");
	var topValue = $(window).scrollTop();
	$('#bg').css("top", (topValue * 0.25));

	$('.top-left').css('top', (topValue * 0.6));
	$('.top-center').css('left', (topValue * 0.2));
	$('.top-right').css('right', (topValue * 0.4));
	$('.bottom-left').css('top', (topValue * 0.8));
	$('.bottom-center').css('top', (topValue * 0.1))
		.css('transform', 'rotateY(' + (topValue * 0.5) + 'deg)');
	$('.bottom-right').css('top', (topValue * 0.5));
}

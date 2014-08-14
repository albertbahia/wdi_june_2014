$(document).ready(function(){
	console.log("Loaded, bro");
	$(window).on('scroll', parallax);
})

function parallax() {
	var windowPosition = $(window).scrollTop();
	$('.bg').css('top', -(windowPosition*0.2));
	$('.top-center').css('top', windowPosition*1.2);
	$('.bottom-right').css('top', windowPosition*0.8);
	$('.top-left').css('left', windowPosition*0.7);
	$('.bottom-right').css('right', windowPosition*0.3);
	$('.bottom-left').css('transform', 'rotate('+windowPosition*.5+'deg)');
	var x = windowPosition *.003
	var y = windowPosition *.003
	$('.top-center').css('transform', 'scale('+x+','+y+')')
	$('.top-center').css('z-index', '10')
}

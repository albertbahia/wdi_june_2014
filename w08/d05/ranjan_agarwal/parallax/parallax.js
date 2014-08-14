$(document).ready(function(){
	console.log("Loaded, bro");
	$(window).on('scroll', function() {
			scroll = $(window).scrollTop();
			scrollBg = $('.bg').css('top', -(scroll * .25));
			randomNum = 20;
			topLeft = $('.top-left').css('top', (scroll * .6)).css('transform', 'rotate('+ (scroll * .5) +'deg)');
			topMid = $('.top-center').css('top', (scroll * .45)).css('transform', 'rotate('+ (scroll * .32) +'deg)');
			topRight = $('.top-right').css('left', (scroll * .72));
			bottomLeft = $('.bottom-left').css('top', (scroll * .56)).css('transform', 'rotate('+ (scroll * .67) +'deg)');
			bottomMid = $('.bottom-center').css('top', (scroll * .49)).css('transform', 'rotate('+ (scroll * .9) +'deg)');
	});
});

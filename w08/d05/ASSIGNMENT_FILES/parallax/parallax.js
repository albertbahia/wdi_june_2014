$(document).ready(function(){
	console.log("Loaded, bro");
<<<<<<< HEAD
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
=======

  $(window).scroll(function() {
    var scrolled = $(window).scrollTop();
    $('.bg').css('top', -(scrolled * .25));

    $('.top-left').css('top', (scrolled * .6));
    $('.top-center').css('left', (scrolled * .4));
    $('.top-right').css('right', (scrolled * .8));

    $('.bottom-left').css('top', (scrolled * .2));
    $('.bottom-center').css('top', (scrolled * .5))
                       .css('transform','rotateY('+ (scrolled * .5) + 'deg)');
    $('.bottom-right').css('top', (scrolled * .4));
  })
})
>>>>>>> 97da1addd0f4ba10c88e5c77716f6bc2088c34e4

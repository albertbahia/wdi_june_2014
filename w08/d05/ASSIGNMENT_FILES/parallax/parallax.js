$(document).ready(function(){
	console.log("Loaded, bro");

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
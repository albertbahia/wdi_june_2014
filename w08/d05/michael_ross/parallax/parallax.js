$(document).ready(function(){
	console.log("Loaded, bro");
	clouds();

	$(window).scroll(function() {

		var scrolled = $(window).scrollTop();

		$('.bg').css('top', - (scrolled * .25))

		$('.top-left').css('top', -(scrolled * .6)).css('transform', 'rotate(' + scrolled / .3 + 'deg)');
		$('.top-center').css('top', -(scrolled * .5)).css('transform', 'rotateY(' + scrolled / .2 + 'deg)');
		$('.top-right').css('top', -(scrolled * .7)).css('transform', 'rotate(' + scrolled / .5 + 'deg)');

		$('.bottom-left').css('top', -(scrolled * .6)).css('transform', 'rotate(' + scrolled / .5 + 'deg)');
		$('.bottom-center').css('top', -(scrolled * .5)).css('transform', 'rotateY(' + scrolled * .5 + 'deg)');
		$('.bottom-right').css('top', -(scrolled * .8)).css('transform', 'rotateX(' + scrolled / .5 + 'deg)');

	})
})

function clouds() {
	$('.bg').css({'z-index': -1, 'position': 'fixed'});
}

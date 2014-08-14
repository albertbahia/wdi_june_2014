$(document).ready(function(){
	console.log("Loaded, bro");
	$(window).scroll(function() {
		var scrolled = $(window).scrollTop();
		$('.bg').css('top', -(scrolled * 0.25));

		// slowly change the top property of the first cat, it will move down as the background moves up
		// the larger the factor, the faster the item moves
		$('.top-left').css('top', (scrolled * 0.6));
		$('.top-centered').css('left', (scrolled * 0.4));
		$('.top-right').css('top', (scrolled * 0.8))
			.css('transform', 'rotateY('+ (scrolled *.5) + 'deg)');


		$('.bottom-left').css('top', (scrolled * 0.2))
			.css('transform', 'rotate('+ (scrolled *.8) + 'deg)');
		$('.bottom-centered').css('top', (scrolled * 0.5));
		$('.bottom-right').css('top', (scrolled * 0.4));


	});

});




// $('.bg ').css(top: )

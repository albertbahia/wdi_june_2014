$(function() {
	console.log('*implements \"loaded bro\" philosophy*');

	$('h1').on('click', h1Click);
 // $('element to be listened to').on('event type', what to do aka a REFERENCED function);

	$('p').on('click', pClick);

	// $('h1').on('mouse on', h1MouseOver);
});


var h1Click = function() {
	// alert('I heard a click');
	var p = $(this);
	// set var for this <p> AS A JQUERY OBJECT
	if (p.css('color') == 'rgb(0, 0, 0)') {
		p.css('color', 'rgb(255, 0, 0)');
	} else if (p.css('color') == 'rgb(255, 0, 0)') {
		p.css('color', 'rgb(0, 255, 0)');
	} else if (p.css('color') == 'rgb(0, 255, 0)') {
		p.css('color', 'rgb(0, 0, 255)'); 
	} else if (p.css('color') == 'rgb(0, 0, 255)') {
		p.css('color', 'rgb(0, 0, 0)'); 
	}
	console.log(p.css('color'));
}

var pClick = function() {
	$(this).css('color', 'violet')
	// "this" aka "what the function is called on" aka "only THAT <p> element"
	// convert 'this' to a jQuery object so that you can use jQuery functions (like .css) on it
	console.log(this);
}


// var h1MouseOver = function() {
// 	alert('honey we\'ve got mice');
// }
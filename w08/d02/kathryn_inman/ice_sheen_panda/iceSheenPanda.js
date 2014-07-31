$(function() {
  console.log('Loaded');
  var body = $("body");
  addImages();
  setCoords();
  body.on('mousemove', changeImageMargins);
  body.on('mousemove', changeImageSize);
});


function addImages() {
	var iceImage = $('<div>').html($('<img src="http:\/\/nicenicejpg.com/200/200">').addClass('ice'))
	.appendTo('body');
	var sheenImage = $('<div>').html($('<img src="http:\/\/placesheen.com/200/200">').addClass('sheen'))
	.appendTo('body');
	var pandaImage = $('<div>').html($('<img src="http:\/\/media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg">').addClass('panda'))
	.appendTo('body');
};

function setCoords() {
	var cursorCoords = $('<h1 id="coords">').appendTo('body'); 
	$('body').on('mousemove', function(event) {
		$('#coords').text("x: " + event.pageX + ", y: " + event.pageY);
	});	
};


function changeImageMargins() {
	$('img').eq(0).css({'margin-top': event.pageY, 'margin-left': event.pageX});
	$('img').eq(1).css({'margin-top': event.pageX, 'margin-left': event.pageY});
	$('img').eq(2).css({'margin-top': 0.5 * event.pageX, 'margin-left': 0.5 * event.pageY});
};

function changeImageSize() {
	$('img').eq(0).css({'height': 0.40 * event.pageY, 'width': 0.40 * event.pageX});
	$('img').eq(1).css({'height': 0.40 * event.pageX, 'width': 0.40 * event.pageY});
	$('img').eq(2).css({'height': 0.40 * event.pageX, 'width': 0.40 * event.pageY});
};


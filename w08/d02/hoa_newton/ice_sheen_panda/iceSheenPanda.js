$(function() {
  console.log('Loaded, bro');
  var body = $("body");

	var img = $('<img class="ice" src="http://nicenicejpg.com/200/200">');
	img.style.position = "absolute";
	img.style.left = x_pos;
	img.style.top = y_pos;
	body.append(img);

	var img2 = $('<img class="sheen" src="http://placesheen.com/200/200">');
	body.append(img2);

	var img3 = $('<img class="panda" src="http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg">');
	body.append(img3);
		
	body.append($('<h1 class="mousemove">'));

	body.mousemove(function(event){ 
  	$("h1.mousemove").text("X: " + event.pageX + ", Y: " + event.pageY); 
	});
	
});


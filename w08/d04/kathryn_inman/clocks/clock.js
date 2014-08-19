$(function(){
  clock();
});

function clock(){

	var currentTime = new Date();


	var secondHand = $('#second-hand');
	var secondCounter = currentTime.getSeconds() * 6;
	setInterval(function() {
		secondHand.css({'-webkit-transform': 'rotate(' + secondCounter + 'deg)'});
		secondCounter+=6;
	}, 1000)

	var minHand = $('#minute-hand');
	var minCounter = currentTime.getMinutes() * 6;
	setInterval(function() {
		minHand.css({'-webkit-transform': 'rotate(' + minCounter + 'deg)'});
		minCounter+=0.1;
	}, 1000)

	var hourHand = $('#hour-hand');
	var hourCounter = currentTime.getHours() * 30 + currentTime.getMinutes() * 0.5;
	setInterval(function() {
		hourHand.css({'-webkit-transform': 'rotate(' + hourCounter + 'deg)'});
		hourCounter+=0.0083333;
		console.log(currentTime.getHours());
	}, 1000)

}
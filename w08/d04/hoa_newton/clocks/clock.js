$(function(){
  clock();
});

function clock(){
	var minuteHand = $('#minute-hand');
	var secondHand = $('#second-hand');
	var hourHand = $('#hour-hand');

	var secondDegree = 6;
	var minuteDegree = 6;
	var hourDegree = 6;
	setInterval(function(){
		secondHand.css('transform', 'rotate('+ secondDegree +'deg)');
		secondDegree += 6;
	}, 1000)

	setInterval(function(){
		minuteHand.css('transform', 'rotate('+ minuteDegree +'deg)');
		minuteDegree += 6;
	}, 60000)

	setInterval(function(){
		hourHand.css('transform', 'rotate('+ hourDegree +'deg)');
		hourDegree += 6;
	}, 3600000)
}
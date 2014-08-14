$(function(){
  clock();
});

function clock(){
  var currentTime = new Date();

  var secondDegrees= currentTime.getSeconds() * 6;
  var minuteDegrees= currentTime.getMinutes() * 6;
  var hourDegrees= currentTime.getHours() * 30 + currentTime.getMinutes() * 0.5;

  var secondHand = $('#second-hand');
  var minuteHand = $('#minute-hand');
  var hourHand = $('#hour-hand');

  setInterval(function(){
    secondHand.css('transform', 'rotate('+ secondDegrees + 'deg)');
    secondDegrees += 6;
    minuteHand.css('transform', 'rotate('+ minuteDegrees +'deg)');
    minuteDegrees += 0.1;
    hourHand.css('transform', 'rotate('+ hourDegrees + 'deg)');
    hourDegrees += 0.008;
  },1000);
}

clock();

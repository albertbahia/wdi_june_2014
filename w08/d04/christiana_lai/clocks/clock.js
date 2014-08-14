$(function(){
  clock();
});

function clock(){
  secondHand = $('#second-hand');
  minuteHand = $('#minute-hand');
  hourHand = $('#hour-hand');

  currentTime = new Date();
  secondChange = currentTime.getSeconds() * 6;
  minuteChange = currentTime.getMinutes() * 6;
  hourChange = currentTime.getHours() * 30 + currentTime.getMinutes() * 0.5 + currentTime.getSeconds() * 0.008;


  setInterval(function() {
    secondHand.css('transform', 'rotate('+ secondChange +'deg)');
    secondChange += 6;
  }, 1000);

  setInterval(function() {
    minuteHand.css('transform', 'rotate('+ minuteChange +'deg)');
    minuteChange += 0.1;
  }, 1000);

  setInterval(function() {
    hourHand.css('transform', 'rotate('+ hourChange +'deg)');
    hourChange += 0.008;
  }, 1000);

}

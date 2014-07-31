$(function(){
  clock();
});

function clock(){

  var currentTime = new Date();
  // second hand changes 6 degrees every second
  var secondChange = currentTime.getSeconds() * 6;
  // hour hand changes 30 degrees per hour + .5 degrees per minute + .008 degrees per second
  var hourChange = currentTime.getHours() * 30 + currentTime.getMinutes() * .5 + currentTime.getSeconds() * .008;
  // minute hand changes 6 degrees every minute that has passed
  var minuteChange = currentTime.getMinutes() * 6;

  var secondHand = $('#second-hand');
  var minuteHand = $('#minute-hand');
  var hourHand = $('#hour-hand');
  
  // set an interval to rotate each hand by X degrees every second.
  setInterval(function(){
    secondHand.css('transform', 'rotate('+ secondChange +'deg)');
    minuteHand.css('transform','rotate(' + minuteChange + 'deg)');
    hourHand.css('transform', 'rotate('+ hourChange + 'deg)');
    secondChange += 6;
    minuteChange += .1;
    hourChange += .008;
  }, 1000)

}
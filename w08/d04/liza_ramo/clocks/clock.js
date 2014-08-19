
$(function(){
  console.log("Oh, hai.");
  clock();
});

function clock(){

  var currentTime = new Date();

  var secondHand = $('#second-hand');
  var minuteHand = $('#minute-hand');
  var hourHand = $('#hour-hand');

  var secondChange = currentTime.getSeconds() * 6;
  var minuteChange = currentTime.getMinutes() * 6; // every min, minhand moves 6 degrees
  var hourChange = currentTime.getHours() * 30 + currentTime.getMinutes() * .5; // every hour, the hrhand moves 30 degrees; for every min that passes, hrhand moves 1/2 a degree

  setInterval(function() {
    secondHand.css('transform', 'rotate('+ secondChange +'deg)');
    secondChange += 6;
    minuteHand.css('transform', 'rotate('+ minuteChange + 'deg)');
    minuteChange += .1;
    hourHand.css('transform', 'rotate('+ hourChange + 'deg)');
    hourChange += .008;
  }, 1000)
}

////////////////////////
////// notes: /////////
//////////////////////
// every 1,000 ms:
// second hand moves 6 degrees
// min hand moves .1 degrees
// hour hand moves .008 degrees

// use //
// setInterval(function(), ms); - - > second hand








//

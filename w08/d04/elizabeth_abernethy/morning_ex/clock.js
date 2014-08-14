$(function(){
  clock();
});


function clock(){
  var currentTime = new Date();

  var secondHand = $('#second-hand');
  var minuteHand = $('#minute-hand');
  var hourHand = $('#hour-hand');

  var secondChange = currentTime.getSeconds() * 6;
  var minuteChange = currentTime.getMinutes() * 6;
  var hourChange = currentTime.getHours() * 30 + currentTime.getMinutes() * 0.5;

  setInterval(function(){
    secondHand.css('transform', 'rotate('+ secondChange + 'deg)');
    secondChange += 6;
  }, 1000)


  setInterval(function(){
    minuteHand.css('transform', 'rotate('+ minuteChange + 'deg)');
    minuteChange += 0.1;
  }, 1000)

  setInterval(function(){
    hourHand.css('transform', 'rotate('+ hourChange + 'deg)');
    hourChange += 0.008;
  }, 1000)

}

// setInterval(function() {clock(), xxxx })


// 360deg / 60s = 6 degrees/sec
// secondHand => setInterval (1,000ms) = 1s

// 6deg / 60s = 0.1deg / sec
// minuteHand => setInterval (60,000ms) = 1min

// 30deg / 3600s = 0.008deg / sec
// hourHand => setInterval (3,600,000ms) = 1hour

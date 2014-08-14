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
  var hourChange = currentTime.getHours() * 30 + currentTime.getMinutes() * 0.5 +
  currentTime.getSeconds() * 0.008;

  setInterval(function() {
    secondHand.css("transform", "rotate(" + secondChange + "deg)");
    minuteHand.css("transform", "rotate(" + minuteChange + "deg)");
    hourHand.css("transform", "rotate(" + hourChange + "deg)");

    secondChange += 6;
    minuteChange += 0.1;
    hourChange += 0.008;

    }, 1000);
}

$(function(){
  clock();
});



function clock() {

  var currentTime = new Date();

  var secondHand = $('#second-hand');
  var minuteHand = $('#minute-hand');
  var hourHand = $('#hour-hand');

  var secondChange = currentTime.getSeconds() * 6;
  var minuteChange = currentTime.getMinutes() * 6;
  var hourChange = currentTime.getHours() * 30 + currentTime.getMinutes() * .5 + currentTime.getSeconds() * .008;

  setInterval(function(){
  secondHand.css('transform', 'rotate(' + secondChange + 'deg)');
  secondChange += 6;
  }, 1000);

  setInterval(function(){
  minuteHand.css('transform', 'rotate(' + minuteChange + 'deg)');
  // minuteChange += 0.1;
  minuteChange += 720;
  }, 1000);

  setInterval(function(){
  hourHand.css('transform', 'rotate(' + hourChange + 'deg)');
  // hourChange += 0.008;
  hourChange += 1260;
  }, 1000);
}

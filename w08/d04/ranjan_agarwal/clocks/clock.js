$(function(){
  clock();
});

function clock(){
  secondHand = $('#second-hand');
  minuteHand = $('#minute-hand');
  hourHand = $('#hour-hand');
  dt = new Date();
  secs = dt.getSeconds();
  secsDeg = secs * 6;
  mins = dt.getMinutes();
  minsDeg = mins * 6;
  hr = dt.getHours();
  hourDeg = hr * 30 + dt.getMinutes() * .5;

  secondChange = 0;
  hourChange = 0;
  minuteChange = 0;


  setInterval(function() {
    secondHand.css('transform', 'rotate('+ secsDeg +'deg)');
    secsDeg += 6;
  },1000);
  setInterval(function() {
    minuteHand.css('transform', 'rotate('+ minsDeg +'deg)');
    minsDeg += .1;
  },1000);
  setInterval(function() {
    hourHand.css('transform', 'rotate('+ hourDeg +'deg)');
    hourDeg += .008;
  },1000);

}

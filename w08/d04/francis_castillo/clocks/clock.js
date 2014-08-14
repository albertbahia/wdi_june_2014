$(function(){
  clock();
});

// var angle = 0;
// var distance = 135; // distance of movingdiv from center
// var speed = 1;    // speed in degrees per second
// var rate  = 100;    // refresh rate in ms
//
// function clock(){
//
//     var o = $('.clock').offset();
//     var t = o.top + (distance * Math.sin(angle * Math.PI/180.0));
//     var l = o.left+ (distance * Math.cos(angle * Math.PI/180.0));
//
//     $('#second-hand').css({
//         top: t,
//         left: l
//     });
//
//     angle += (speed * (rate/1000)) % 360;
// }
// var angle = 0;
// var distance = 135; // distance of movingdiv from center
// var speed = 1;    // speed in degrees per second
// var rate  = 100;    // refresh rate in ms
//
function clock(){
  var secondChange = currentTime.getSeconds() * 6;
  var minuteChange = currentTime.getMinutes() * 6 ;
  var hourChange = currentTime.getHours() * 30 + currentTime.getMinutes() * .5 + currentTime.getSeconds() * .008;

  var currentTime = new Date();
  var secondHand = $('#second-hand');
  var minuteHand = $('#minute-hand');
  var hourHand = $('#hour-hand');


  setInterval(function() {
    $('#second-hand').css("transform", 'rotate('+ secondChange + 'deg)');
    secondChange += 6;
  }, 1000);
  setInterval(function() {
    $('#minute-hand').css("transform", 'rotate('+ minuteChange + 'deg)');
    minuteChange += .1;
  }, 1000);
  setInterval(function() {
    $('#hour-hand').css("transform", 'rotate('+ hourChange + 'deg)');
    hourChange += .008;
  }, 1000);

}

$(function(){
  clock();
});

function clock(){
  var minuteHand = $('#minute-hand');
  var secondHand = $('#second-hand');
  var hourHand   = $('#hour-hand');

  var d = new Date();

  var secondDegrees = (d.getSeconds() * 6);
  var minuteDegrees = (d.getMinutes() * 6) + (d.getSeconds() * 0.1);
  var hourDegrees   = (d.getHours() * 30) + (d.getSeconds() * 0.008333333333333333333333333333);

  setInterval(function() {

    secondHand.css('transform', 'rotate('+ secondDegrees +'deg)');
    secondDegrees += 6;

    minuteHand.css('transform', 'rotate('+ minuteDegrees +'deg)');
    minuteDegrees += 0.1;

    hourHand.css('transform', 'rotate('+ hourDegrees +'deg)');
    hourDegrees += 0.008333333333333333333333333333;


    if (secondDesecondDegrees === 360) {
      secondDegrees = 0;
    }
  }, 1000);

  // setInterval(function() {
  //
  //   minuteHand.css('transform', 'rotate('+ minuteDegrees +'deg)');
  //   minuteDegrees += 6;
  //
  //   if (minuteDegrees === 360) {
  //     minuteDegrees = 0;
  //   }
  // }, 60000);
  //
  // setInterval(function() {
  //
  //   hourHand.css('transform', 'rotate('+ hourDegrees +'deg)');
  //   hourDegrees += 30;
  //
  //   if (hourDegrees === 360) {
  //     hourDegrees = 0;
  //   }
  // }, 3600000);
}

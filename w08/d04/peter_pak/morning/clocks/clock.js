$(function(){
  clock();
});



function clock(){
  var currentTime = new Date();

  var secondsDeg = currentTime.getSeconds() * 6;
  var minutesDeg = currentTime.getMinutes() * 6;
  var hoursDeg = currentTime.getHours() * 30;

  setInterval(function() {
    $('#second-hand').css('transform', 'rotate('+secondsDeg+'deg)');
    secondsDeg += 6;
    $('#minute-hand').css('transform', 'rotate('+minutesDeg+'deg)');
    minutesDeg += 0.1;
    $('#hour-hand').css('transform', 'rotate('+hoursDeg+'deg)');
    hoursDeg += 0.008;
  }, 1000);
}

$(function(){
  clock();
});

function clock(){
  setInterval( function() {
    var secondHand = $('#second-hand');
    var seconds = new Date().getSeconds();
    var secondHandDegree = seconds * 6;
    var secondRotateString = "rotate("+ secondHandDegree+ "deg)";

    secondHand.css('transform', secondRotateString);
  }, 1000);

  setInterval( function() {
    var minuteHand = $('#minute-hand');
    var minutes = new Date().getMinutes();
    var minuteHandDegree = minutes * 6;
    var minuteRotateString = "rotate("+ minuteHandDegree +"deg)";

    minuteHand.css('transform', minuteRotateString);
  }, 1000);

  setInterval( function() {
    var hourHand = $('#hour-hand');
    var hours = new Date().getHours();
    var minutes = new Date().getMinutes();
    var seconds = new Date().getSeconds();
    var hourHandDegree = hours * 30 + (minutes / 2) + (seconds * .008);
    var hourRotateString = "rotate("+ hourHandDegree +"deg)";

    hourHand.css('transform', hourRotateString);
  }, 1000);
}

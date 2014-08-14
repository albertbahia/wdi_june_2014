$(function() {
  console.log('Loaded, bro');
  var body = $("body");
  addImages(body);

  var heading = $('<h1 class="coordinates">').appendTo(body);
  $(document).on( "mousemove", function( event ) {
    $(heading).text( "pageX: " + event.pageX + ", pageY: " + event.pageY );
  });

  $(window).on( "mousemove", function( event ) {
    xCoord = event.pageX;
    yCoord = event.pageY;
    var width = $('.ice').width();
    var height = $('.ice').height();
    $('.ice').css('top', yCoord - (height / 2));
    $('.ice').css('left', xCoord - (width / 2));

    body.css('background', changeColor(xCoord, yCoord));
  });

  // $(document).on("mousemove", function(event) {
  //   var colorY = $(hsl(event.pageY,100%, 50%));
  //   var colorX = $(hsl(event.pageX,100%, 50%));
  //   $(body).css('background-color', colorY);
  //   $(body).css('background-color', colorX);
  // });

});

function addImages(body) {
  var firstImage = $('<img src="http://nicenicejpg.com/200/200" class="ice" />').appendTo(body);
  var secondImage = $('<img src="http://placesheen.com/200/200" class="sheen" />').appendTo(body);
  var thirdImage = $('<img src="http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg" class="panda" />').appendTo(body);



}


function changeColor(x, y) {
  var hue = x / parseInt($(window).width()) * 360;
  var saturation = ", 100%";
  var lightness = y / parseInt($(window).height()) * 100;
  var hsl = "hsl("+ hue + saturation + lightness +"%)";
  return hsl;
}

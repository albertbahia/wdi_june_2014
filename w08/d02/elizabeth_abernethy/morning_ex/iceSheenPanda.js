$(function() {
  console.log('Loaded, bro');
  var body = $("body");

  var ice = $('<img>', {class: "ice", src: "http://nicenicejpg.com/200/200"});
  var sheen = $('<img>', {class: "sheen", src: "http://placesheen.com/200/200"});
  var panda = $('<img>', {class: "panda", src: "http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg"});
  body.append(ice).append(sheen).append(panda);

  var title = $('<h1>');
  body.append(title);

  // within the mousemove
  $(window).mousemove(function(event) {
    var xCoord = event.pageX;
    var yCoord = event.pageY;
    title.text("x:" + xCoord + " y:" + yCoord);
    ice.css({"margin-left": xCoord * .5, "margin-top": yCoord * .25 });
    sheen.css({"margin-left": xCoord * .6, "margin-top": yCoord * .4 });
    panda.css({"margin-left": xCoord * .4, "margin-top": yCoord * .5 });
    body.css('background', changeColor(xCoord, yCoord));
  });

});

function changeColor(x, y){
  var hue = x / parseInt($(window).width()) * 360;
  var saturation = ",100%,"
  var lightness = y / parseInt($(window).height()) * 100;
  var hsl = "hsl("+hue+saturation+lightness+"%)";
  return hsl;
}

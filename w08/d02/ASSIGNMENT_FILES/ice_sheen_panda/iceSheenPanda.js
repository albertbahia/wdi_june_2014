$(function() {
  console.log('Loaded, bro');
  var body = $("body");

  var ice = $("<img>").addClass('ice').attr('src','http://nicenicejpg.com/200/200');
  var sheen = $("<img>").addClass('sheen').attr('src','http://placesheen.com/200/200');
  var panda = $("<img>").addClass('panda').attr('src','http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg');

  body.append(ice).append(sheen).append(panda);

  var title = $("<h1>");
  body.append(title);
  // within the mousemove
  $(document).mousemove(function(event){
    var xCoord = event.pageX;
    var yCoord = event.pageY;
    title.text("x:" + xCoord + " y:" + yCoord);
    ice.css({"margin-left": xCoord * .5, "margin-top":yCoord * .25, 'height': yCoord * .2, 'width': yCoord *.2});
    sheen.css({"margin-left": -(yCoord * .6), "margin-top":xCoord * .4, 'height': xCoord * .1, 'width': xCoord *.1});
    panda.css({"margin-left": xCoord * .4, "margin-top":yCoord *.5});
    body.css('background',changeColor(xCoord,yCoord));
    $('img').css('border-color', changeColor(yCoord,xCoord));
  });

  walkingCat();
});


function changeColor(x,y){
    var hue = x / parseInt($(window).width()) * 360;
    var saturation = ",100%,";
    var lightness = y / parseInt($(window).height()) * 100;
    var hsl = "hsl("+hue+saturation+lightness+"%)";
    return hsl;
}

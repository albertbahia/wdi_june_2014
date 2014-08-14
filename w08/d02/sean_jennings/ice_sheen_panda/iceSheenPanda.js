$(function() {
var body = $("body");

var ice = $("<img>").addClass('ice').attr('src', );
var sheen = $("<img>").addClass('sheen').attr('src', );
var panda = $("<img>").addClass('panda').attr('src', );

body.append(ice).append(sheen).append(panda);

var title = $("<h1>");
body.append(title)

$(window).mousemove(function(event) {
  var xCoord = event.pageX;
  var yCoord = event.pageY;
  title.text("x:" + xCoord + "y:" + yCoord);
  ice.css({"margin-left": xCoord * .5, "margin-top":yCoord * .25, 'height': yCoord * .2, 'width': yCoord})
})


});

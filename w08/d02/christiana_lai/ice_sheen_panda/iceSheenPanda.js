$(function() {
  console.log('Loaded, bro');
  var body = $("body");
  onLoad(body);
  $(document).on("mousemove", mouseMove);
});

  function onLoad(body) {
    var ice = $('<img src= "http://nicenicejpg.com/200/200">').addClass('ice');
    var sheen = $('<img src= "http://placesheen.com/200/200">').addClass('sheen');
    var panda = $('<img src= "http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg">').addClass('panda');
    body.append(ice).append(sheen).append(panda);
  }

  function mouseMove(event) {
    var h1 = $('h1');
    var xCoord = event.pageX;
    var yCoord = event.pageY;
    h1.text("pageX: " + event.pageX + ", pageY " + event.pageY);
    body.append(h1);
    ice.css({"margin-left": xCoord * .5, "margin-top": yCoord * .25, 'height': yCoord *.2, 'width': yCoord * .2});
  }

$(function() {
  console.log('Loaded, bro');
  var body = $("body");
  var ice = $('<img class="ice">').attr('src', "http://nicenicejpg.com/200/200");
  var sheen = $('<img class="sheen">').attr('src', "http://placesheen.com/200/200");
  var panda = $('<img class="panda">').attr('src', "http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg");

  body.append(ice).append(sheen).append(panda);

  body.on("mousemove", function(event) {
    $('.mousemove').text("X: " + event.pageX + ", Y: " + event.pageY);
  });

  $('<h1 class="mousemove">').appendTo(body);
});

function moveImages(image) {

}

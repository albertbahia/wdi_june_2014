
$(function() {
  console.log('Loaded, bro');
  var body = $("body");
  var imageArr = [
    "http://nicenicejpg.com/200/200",
    "http://placesheen.com/200/200",
      "http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg"
    ];
  var imgClass = ["ice", "sheen", "panda"]
  createImage(imageArr, imgClass, body);
  h1Tag(body);
  $(body).on('mousemove', function(event) {
    var x = event.pageX;
    var y = event.pageY;
    // $('.mouseMove').text("pageX:" + event.pageX + " pageY:" + event.pageY);
    $('.ice').css('margin-left', x).css('margin-top', y);
    $('.sheen').css('margin-left', x).css('margin-top', y);
    $('.panda').css('margin-left', x).css('margin-top', y);
  })
});

function createImage (image, imgClass, location) {

  for (var i = 0; i < image.length; i++) {
    $('<img class="' + imgClass[i] + '"' + 'src="' + image[i] + '">')
      .appendTo(location);
  }

}

function h1Tag (location) {
  $('<h1 class="mouseMove">').appendTo(location);
}

$(function() {
  console.log('Loaded, bro');
  createImages();
  var body = $("body");
  mouseMove(event);
});

function createImages() {
  var img1 = $("<img src='http://nicenicejpg.com/200/200' class='ice'>");
  var img2 = $("<img src='http://placesheen.com/200/200' class='sheen'>");
  var img3 = $("<img src='http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg' class='panda'>");
  var h1 = $("<h1 id='heading'>").text("Thank you based god.");

  $('body').append(img1).append(img2).append(img3).append(h1);
}

function mouseMove(event) {
  $(document).on('mousemove', function(event) {
    $('#heading').text("pageX: " + event.pageX + ", pageY: " + event.pageY);
  });
  $(document).on('mousemove', function(event) {
    $('.ice').css({'margin-left': event.pageX*2, "margin-top": event.pageY*2});
    $('.sheen').css({'margin-left': event.pageX*.3, "margin-top": event.pageY*.3});
    $('.panda').css({'margin-left': event.pageX*.1, "margin-top": event.pageY*.1});
  });
  $(document).on('mousemove', function(event) {
    $('body').css("background-color", "rgb("+event.pageX/2+","+event.pageX/2+","+event.pageX/5+")");
  });
}

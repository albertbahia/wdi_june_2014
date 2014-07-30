$(function() {
  console.log('Loaded, bro');
  var body = $("body");

  $('<img src="http://nicenicejpg.com/200/200" class="ice">').appendTo(body);
  $('<img class="sheen" src="http://placesheen.com/200/200">').appendTo(body);
  $('<img class="panda" src="http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg">').appendTo(body);

  $('<h1 class="mousemove">').appendTo(body);

  body.on('mousemove', function() {
    $('.mousemove').text('X: ' + event.pageX + ' Y: ' + event.pageY);

    $('.ice').css('margin-left', event.pageY).css('margin-top', event.pageX);
    $('.sheen').css('margin-left', event.pageX).css('margin-top', event.pageY);
    $('.panda').css('margin-left', event.pageY).css('margin-top', event.pageX);


    body.css('background', 'hsl('+ event.pageX +',100%,50%)')
  });
});

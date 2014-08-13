$(function() {
  console.log('Loaded, bro');
  var body = $("body");
  addingImages();
  $('<h1 id="tracker">').appendTo($('body'));
  $(window).on('mousemove', whereAmI);
  // $(window).on('mousemove', spectrum);
});


function addingImages() {
  var iceIceImage = $('<img class="ice">').attr('src', 'http://nicenicejpg.com/200/200');
  var budFox = $('<img class="sheen">').attr('src', 'http://placesheen.com/200/200');
  var bambooBear = $('<img class="panda">').attr('src', 'http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg');

  $('body').append(iceIceImage).append(budFox).append(bambooBear)

}

function whereAmI() {
  $('#tracker').text( "X: " + event.pageX + " Y: " + event.pageY );
  $('.ice').css({'top': (event.pageY * 2)/3, 'left': (event.pageX * 2)/3});
  $('.sheen').css({'top': (event.pageY * 5)/7, 'left': (event.pageX * 5)/4});
  var rainbowColor = (event.pageY/event.pageX)*360
  $('body').css('background', 'hsl("'+rainbowColor+'",100%, 50%)')

}
//
// function spectrum() {
//   var color = 'rgb(' + (Math.floor(Math.random() * 256)) + ',' + (Math.floor(Math.random() * 256)) + ',' + (Math.floor(Math.random() * 256)) + ')';
//   $('body').css( { backgroundColor: color }, spectrum);
// }

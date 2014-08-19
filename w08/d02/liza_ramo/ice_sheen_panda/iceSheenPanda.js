$(function() {
  console.log('Oh, hai.');
  var body = $("body");

  $('<img src="http://assets.worldwildlife.org/photos/144/images/original/Giant_Panda_Hero_image_(c)_Michel_Gunther_WWF_Canon.jpg?1345515244" class="ice">').appendTo('body');
  $('<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBCdh_XylJhJK6iwfwYhyx8Ao6qUGg2wqfUW92vPAyefkxTaXcG3DciQgg" class="sheen">').appendTo('body');
  $('<img src="http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg" class="panda">').appendTo('body');

  $('<h4>').appendTo('body');

  $(document).on('mousemove', function(event) {
    $('h4').text( "pageX: " + event.pageX + ", pageY: " + event.pageY );
  });

  $(document).on('mousemove', function(event) {
    $('.ice').css('margin-top', event.pageX).css('margin-left', event.pageY);
  });

  $(document).on('mousemove', function(event) {
    $('.ice').css('margin-top', event.pageX).css('margin-left', event.pageY);
  });

  $(document).on('mousemove', function(event) {
    $('.sheen').css('margin-top', event.pageY).css('margin-left', event.pageX);
  });

  $(document).on('mousemove', function(event) {
    $('.panda').css('margin-top', event.pageY).css('margin-left', event.pageY);
  });

  $(document).on('mousemove', function(event) {
    $('body').css( 'background-color', 'hsl(' + event.pageY + ' , 20%, 75% )' );
  });

});

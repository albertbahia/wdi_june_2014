$(function() {
  console.log('Loaded, bro');
  var body = $("body");
  createImage();
  createHOne();

  $( 'body' ).on( "mousemove", function( event ) {
  $( ".coordinate" ).text( "X: " + event.pageX + ", Y: " + event.pageY );
  $( ".ice" ).css("margin-left", event.pageX);
  $( ".ice" ).css("margin-top", event.pageY);
  $( ".sheen" ).css("margin-left", (event.pageX * -1));
  $( ".sheen" ).css("margin-top", (event.pageY * -1));
  $( ".panda" ).css("margin-left", (event.pageX * -1));
  $( ".panda" ).css("margin-top", event.pageY);
  $( "body" ).css("background-color", "#" + event.pageY + event.pageX0);
  });

});

function createImage() {
  $('<img>', {src: "http://nicenicejpg.com/200/200"}).addClass('ice').appendTo('body');
  $('<img>', {src: "http://placesheen.com/200/200"}).addClass('sheen').appendTo('body');
  $('<img>', {src: "http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg"})
    .addClass('panda')
    .appendTo('body');
}

function createHOne() {
  $('<h1>').addClass('coordinate').appendTo('body');
}

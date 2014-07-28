$(function() {
  console.log('loaded, bruh bruh.');
  createDivs();
  $('#set-color').click(chooseColor);
  $('.square').mouseover(paintCanvas);
  $('.swatch').click(setBrushColor);

});

var turnGreen = function() {
 var color = $('#color-field').val();
 $(this).css('background-color', 'green');
}

// Creates Canvas
var createDivs = function() {
  for (var i = 0; i < 8000; i++) {
    $('<div>').addClass('square').appendTo('body');
  }
};

// sets brush and swatch colors
var chooseColor = function() {
  var colorOne = $('.brush').css('background-color');
  var colorTwo = $('#color1').css('background-color');
  var colorThree = $('#color2').css('background-color');
  var colorFour = $('#color3').css('background-color');
  var currentColor = $('#color-field').val();
  $('.brush').css('background-color', currentColor);
  $('#color1').css('background-color', colorOne);
  $('#color2').css('background-color', colorTwo);
  $('#color3').css('background-color', colorThree);
  $('#color4').css('background-color', colorFour);
}

// sets brush color via swatch
var setBrushColor = function() {
  var color = $(this).css('background-color');
  $('.brush').css('background-color', color);
}

var paintCanvas = function() {
  var color = $('.brush').css('background-color');
  $(this).css('background-color', color);
}

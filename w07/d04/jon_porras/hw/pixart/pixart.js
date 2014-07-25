$(function() {
  console.log('loaded, bruh.')

  createDivs();
  $('#set-color').click(chooseColor);
  $('.square').mouseover(paint);
  $('.swatch').click(setBrushColor);
});

//create canvas
var createDivs = function() {
  for(var i=0;i<8000;i++){
    $('<div>').addClass('square').appendTo('body');
  }
}

//set paint brush and swatch colors
var chooseColor = function() {
  var usedColor1 = $('.brush').css('background-color');
  var usedColor2 = $('#1').css('background-color');
  var usedColor3 = $('#2').css('background-color');
  var currentColor = $('#color-field').val();
  $('.brush').css('background-color', currentColor);
  $('#1').css('background-color', usedColor1);
  $('#2').css('background-color', usedColor2);
  $('#3').css('background-color', usedColor3);
}

var setBrushColor = function() {
  var color = $(this).css('background-color');
  $('.brush').css('background-color', color);
}

var paint = function() {
  var color = $('.brush').css('background-color');
  $(this).css('background-color', color);
}

//part of exercise but not using
var toGreen = function() {
  var color = $('#color-field').val();
  $(this).css('background-color', 'green');
}

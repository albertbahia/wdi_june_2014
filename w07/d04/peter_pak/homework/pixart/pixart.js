$(function() {
  console.log('loaded')
  $('#set-color').on('click', setColor);
  createSquares();
  $('.square').on('mouseover', paintSquare);
});

var setColor = function() {
  var brushColor = $('#color-field').val();
  $('.brush').css('background-color', brushColor);
};


var createSquares = function() {
  for (var i = 0; i < 8000; i++){
    $('<div>').addClass('square').appendTo('body');
  };
};

var paintSquare = function() {
  var brushColor = $('.brush').css('background-color');
  $(this).css('background-color', brushColor);
};
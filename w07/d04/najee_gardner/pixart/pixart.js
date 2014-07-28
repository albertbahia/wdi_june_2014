$(function() {
  console.log('Loaded, Bro');

  $('#set-color').on('click', changeBrushColor);
  createSquares();
  $('.square').on('mouseover', changeSquareColor);
});

var changeBrushColor = function() {
  $('.brush').css('background', $('#color-field').val());
}

function createSquares() {
  for (var i = 0; i < 8000; i++) {
    $('<div class="square">').appendTo('body');
  }
}

var changeSquareColor = function() {
  var color = $('.brush').css('background');
  $(this).css('background', color);
}

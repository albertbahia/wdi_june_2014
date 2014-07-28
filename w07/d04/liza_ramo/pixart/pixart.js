$(function() {
  console.log('Loaded, bro');

  // Listeners //
  $('#set-color').on('click', setColor);

  // Makes 20 squares
  createSquares();
  $('.square').on('mouseover', changeSqColor);
});

var brushColor = $('.brush').css('background-color');

var setColor = function() {
  console.log(this);
  var setColorButton = $(this);
  var input = $('#color-field');

  $('.brush').css('background-color', input.val());
};

var createSquares = function() {
  for (var i = 0; i < 8000; i++) {
    $('<div class="square">').appendTo('body')
  }
};

var changeSqColor = function() {
  var brushColor = $('.brush').css('background-color');
  $(this).css('background-color', brushColor);
};

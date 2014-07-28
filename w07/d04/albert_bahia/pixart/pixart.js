var colorSelections = [];

$(function() {
  console.log('This is so loaded.');
  setSquares();
  setBrushes();
  $('#set-color').click(setColor);
})

var setColor = function() {
  var inputColor = $('#color-field').val();
  colorSelections.push(inputColor);
  $('.brush').css('background', inputColor);
  $('.square').mouseover({color: inputColor}, setPieceColor);
};

var setBrushes = function() {
  for(var j = 0; j <= 1; j++) {
    var brush = $('<div>').addClass('brush').appendTo('.controls');
    brush.attr('id', 'brush' + j);
  }
  $('#0').css('background'.colorSelections[0]);
  $('#1').css('background'.colorSelections[1]);
};

var setSquares = function() {
  for(var i = 0; i <= 7999; i++) {
    $('<div>').addClass('square').appendTo('body');
  }
};

var setPieceColor = function(inputColor) {
  var squarePiece = $(this);
  squarePiece.css('background', inputColor.data.color);
};

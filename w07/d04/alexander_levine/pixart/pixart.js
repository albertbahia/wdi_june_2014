$(function() {
  console.log('Locked and Loaded.');
  createSquares();
  changeSquareColor();
});

var createSquares = function() {
  for (var i = 0; i < 8000; i++) {
    $('<div>').addClass('square').appendTo('body');
  }
};

var setColor = function() {
  $('#set-color').click(function() {
    color = $('#color-field').val();
    $('.brush').css('background-color', color);
  });
};

var changeSquareColor = function() {
  setColor();
  $('.square').mouseover(function() {
    $(this).css('background-color', color);
    console.log('click!');
  });
};

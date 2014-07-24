var turn;

$(function() {
  console.log('Loaded, bro');
  startGame();
  turn = 0;
});



function startGame() {
  // gamePieces is a jquery object
  var gamePieces = $('.piece');

  gamePieces.on('click', changeColor);
}

var changeColor = function() {

  if ($(this).attr('class') == 'piece') {

    if (turn % 2 == 0) {
      $(this).addClass('red');
      turn++;
    } else {
      $(this).addClass('black');
      turn++;
    }
  }
}

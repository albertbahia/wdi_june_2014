var game;

$(function() {
  console.log('JS loaded');
  game = new TicTacToe();

  displayGame(game);

});

function displayGame(game) {
  var board = $('#board');
  board.empty();

  for (var row = 0; row < 3; row++) {
    var rowEl = $('<div>').addClass('row').appendTo(board);

    for (var col = 0; col < 3; col++) {
      var squareEl = $('<div>').addClass('square').appendTo(rowEl);

      if (game.board[row][col] === 'X') {
        squareEl.html(game.board[row][col])
        squareEl.addClass('x-spot');
      } else if (game.board[row][col] === 'O') {
        squareEl.html(game.board[row][col])
        squareEl.addClass('o-spot');
      }
    }
  }
}

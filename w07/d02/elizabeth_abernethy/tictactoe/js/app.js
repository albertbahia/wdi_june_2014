var game;

$(function() {
  console.log('JS loaded.');
  game = new TicTacToe();
  displayGame(game);
});

function displayGame(game) {
  // Find the board
  var board = $('#board');

  // Empty the board
  board.empty();

  for (var row = 0; row < 3; row++ ) {
    // Appending each row
    var rowEL = $('<div>').addClass('row').appendTo(board);
    for (var column = 0; column < 3; column++ ) {
      // Appending each square
      var squareEl = $('<div>').addClass('square').appendTo(rowEL);
      if (game.board[row][column]) {
        squareEl.text(game.board[row][column]);
      }
    }
  }
  var info = $('<div>')
    .addClass('info')
    .text("You're up: Player " + game.currentPlayer )
    .appendTo(board);

  var header = $('<div>')
    .addClass('header')
    .text("Tic Tac Toe")
    .prependTo(board);
};

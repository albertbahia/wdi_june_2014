var game;

$(function() {
  console.log('JS loaded.');
  game = new TicTacToe();
  displayGame(game);
});


function displayGame(game) {
  // Find the board
  var board = $('#board');

  // Emptying the board
  board.empty();

  for (var row = 0; row < 3; row++) {
    // Appending each row
    var rowEl = $('<div>').addClass('row').appendTo(board);
    for (var col = 0; col < 3; col++) {
      // Appending each square
      var squareEl = $('<div>').addClass('square').appendTo(rowEl);
      if (game.board[row][col]) {
        squareEl.text(game.board[row][col]);
      }
    }
  }
}

var game;

$(function() {
  console.log('JavaScript is loaded >>');
  game = new TicTacToe();
  displayGame(game);
});

function displayGame(game) {
  // Find the board
  var board = $('#board');
  // Emptying board
  board.empty();

  for (var row = 0; row < 3; row++) {
    // Appending each row
    var rowEl = $('<div>').addClass('row').appendTo(board);
    for (var col = 0; col < 3; col++) {
      // Appending each column
      var squareEl = $('<div>').addClass('square').appendTo(rowEl);
      // Check what corresponding game.board value is and put it in square
      if (game.board[row][col]) {
        // Add text to the square
        squareEl.text(game.board[row][col]);
      }
    }
  }
  var playerTurn = $('<div>').addClass('playerTurn').text("Turn to play: Player " + game.currentPlayer).appendTo(board);
}

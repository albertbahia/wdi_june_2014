var game;
$(function() {
  console.log('Sup bro');
  game = new TicTacToe();
  displayGame(game);
});

function displayGame(game) {
  // Find th board
  var board = $('#board');
  // Emptying the board
  board.empty();
  for (var row = 0; row < 3; row++) {
    // Appending each row
    var rowEl = $('<div>').addClass('row').appendTo(board);

    for(var col = 0; col < 3; col++) {
      // Appending each square
      var squareEl = $('<div>').addClass('square').appendTo(rowEl);
      if (game.board[row][col]) {
        // Add text to square
        squareEl.text(game.board[row][col]);
      }
    }
  }
  var player = $('#current-player');
  $(player).addClass('player-turn').text('The current player is: ' + game.currentPlayer);

}

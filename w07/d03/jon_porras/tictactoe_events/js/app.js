var game;

$(function() {
  console.log('Loaded bro.');
  game = new TicTacToe();
  displayGame(game);
});

var displayGame = function(game) {
  // Empty existing board
  var board = $('#board');
  board.empty();

  // Add squares
  for (var i = 0; i < 3; i++) {
    var row = $('<div>')
                .addClass('row')
                .appendTo(board);

    for (var j = 0; j < 3; j++) {
      var square = $('<div>')
                     .addClass('square')
                     .appendTo(row);

      if (game.board[i][j]) {
        square
          .text(game.board[i][j])
          .addClass(game.board[i][j]);
      }
    }
  }

  // Add game info
  var winner = game.checkWin();
  if (winner) {
    $('<div>')
      .text(winner + ' wins!')
      .appendTo(board);
  } else if (game.boardFull()) {
    $('<div>')
      .text('Draw!')
      .appendTo(board);
  } else {
    $('<div>')
      .text(game.currentPlayer + ' to play')
      .appendTo(board);
  }
}

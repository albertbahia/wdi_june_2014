var game;

$(function() {
  console.log('Sup dog.');
  game = new TicTacToe();
  displayGame(game);
});

function displayGame(game) {
  var board = $('#board');
  board.empty();

  for (var i = 0; i < 3; i++) {
    var rowEl = $('<div>').addClass('row').appendTo(board);

    for (var j = 0; j < 3; j++) {
      var squareEl = $('<div>').addClass('square').appendTo(rowEl);
      if (game.board[i][j]) {
        squareEl.text(game.board[i][j]);
      }
    }
  }
  var info = $('<p>').text(game.currentPlayer + "'s turn!" ).appendTo(board);
}

var game;

$(function(){
  console.log('JS loaded');
  game = new TicTacToe();
  displayGame(game); // call the function after it's loaded
});

function displayGame(game) {
  var board = $('#board');

  board.empty();


  for (var row = 0; row < 3; row++) {
    var rowE1 = $('<div>').addClass('row').appendTo(board);

    for (var col = 0; col < 3; col++) {
      var squareE1 = $('<div>').addClass('square').appendTo(rowE1);
        if (game.board[row][col]) {
          // whatever is in this square (a mark or null), display that
          // only ever execute the 'if' if whatever it's asking is true
          // Because the boxes begin as empty ('null'), they will evaluate to false and not display
          squareE1.text(game.board[row][col]);
          // if null, make mark
        }
    }
  }

  // Add div class="info" to board which displays game.currentPlayer
  var infoE1 = $('<div>').addClass('info').text("The current player is " + game.currentPlayer).appendTo(board);

}

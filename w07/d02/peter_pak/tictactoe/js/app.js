var game;

$(function() {
  console.log('JS loaded.');
  game = new TicTacToe();
  displayGame(game);

});


function displayGame(game) {
  // find board
  var board = $('#board');

  // clear board for new game
  board.empty();

  // appending each row
  for (var row = 0; row < 3; row++) {
  var rowEl = $('<div>').addClass('row').appendTo(board);

    // appending each square
    for (var col = 0; col < 3; col++) {
    var squareEl = $('<div>').addClass('square').appendTo(rowEl);

    // check what the corresponding game board value is and put it in this square
    if (game.board[row][col]) {
      // add text to that square
      squareEl.text(game.board[row][col]);
      }

    }
  }
  var info = "Turn: Player " + game.currentPlayer; 
  $('<div>').addClass('info').text(info).appendTo(board);
}

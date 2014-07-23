var game;

$(function() {
  console.log('JS loaded, bro.');
  game = new TicTacToe();
  displayGame(game);
});

function displayGame(game) {
  //find the board
  var board = $('#board');

  //empty the board
  board.empty();

  //appending each row
  for (var row = 0; row < 3; row++) {
   var rowEl = $('<div>').addClass('row').appendTo(board);

  //appending each square to each row
    for (var col = 0; col < 3; col++){
     var squareEl = $('<div>').addClass('square').appendTo(rowEl);
     if (game.board[row][col]) {
      squareEl.text(game.board[row][col]);
     }
    }
  }
  var info = $('<div>')
    .addClass('info')
    .text("It is " + game.currentPlayer + "'s turn!")
    .appendTo(board);
};


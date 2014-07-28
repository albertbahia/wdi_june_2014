var game;

$(function() {
  console.log('Sup Bro.')
  game = new TicTacToe;
  displayGame(game);
});

function displayGame(game) {

  var board = $('#board');
  board.empty();

    for(var row=0;row<3;row++) {
      var rowEl = $('<div>').addClass('row').appendTo(board);

    for(var col=0;col<3;col++){
      var squareEl = $('<div>').addClass('square').appendTo(rowEl);

        if (game.board[row][col]) {
          squareEl.text(game.board[row][col]);
        }
      }
  }
  var nextPlayer = ""
  if(game.currentPlayer=="X"){
     nextPlayer = "O";
  } else {
    nextPlayer = "X";
  }

  
  $('<div>')
  .addClass('player')
  .appendTo(board)
  .text("Next Player is: " + nextPlayer);

}

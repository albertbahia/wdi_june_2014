var game;
$(function(){
  console.log("JS loaded")
  game = new TicTacToe();
  displayGame(game);
});


function displayGame(game) {
  // Find the Board
  var board = $('#board');
  // Emptying Board
  board.empty();

  for (var row = 0; row < 3; row++) {
    // Appending Each Row
    var rowEl = $('<div>').addClass('row').appendTo(board);

    for (var col = 0; col < 3; col++) {
      // Appending each square
      var squareEl = $('<div>').addClass('square').appendTo(rowEl);
      if(game.board[row][col]) {
        // Add text to the square
        squareEl.text(game.board[row][col]);
      }
    }
  }
      var info = game.currentPlayer + "'s Turn";
      $('<div>').addClass('info').text(info).appendTo(board);


}

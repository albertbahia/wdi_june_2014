var game = new TicTacToe();
$(function() {
  console.log('sup bro');
  displayGame(game);
});

function displayGame(game){
  //Find the Board
  var board = $('#board');
  //Empty the Board
  board.empty();

  for (var row=0; row <3; row++){
    //Append each row
    var rowEl = $('<div>').addClass('row').appendTo(board);
    for (var col = 0; col < 3; col++){

      //Append each square
      var squareEl = $('<div>').addClass('square').appendTo(rowEl);

      //check corresponding game.board value is and add to the square
      if (game.board[row][col]) {
        squareEl.text(game.board[row][col]);

      }
    }
  }
  var info = $('<div>').addClass('info').text("its your turn " + game.currentPlayer);
  board.append(info);


}

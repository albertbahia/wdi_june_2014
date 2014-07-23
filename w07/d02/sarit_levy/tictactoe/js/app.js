var game;

$(function() {
  console.log("JS loaded.");
  game = new TicTacToe();
  displayGame();
});


function displayGame() {
  // Find the board
  var board = $("#board");
  console.log(board);
  // Empty the board
  board.empty();

  for (var row = 0; row < 3; row ++) {
    // Appending each row
    var rowElement = $("<div>").addClass("row").appendTo(board);

  for (var col = 0; col < 3; col ++ ) {
    // Appending each square
    $("<div>").addClass("square").appendTo(rowElement);
  }
  }
}

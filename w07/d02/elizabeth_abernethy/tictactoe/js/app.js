$(function() {
  console.log('JS loaded.');

  // call the function once the page is loaded
  displayGame();
});

function displayGame() {
  var board = $('#board');
  board.empty();

  for (var row = 0; row < 3; row++ ) {
    var rowEL = $('<div>').addClass('row').appendTo(board);

    for (var column = 0; column < 3; column++ ) {
      $('<div>').addClass('square').appendTo(rowEL);
    }
  }



};

$(function() {
  console.log('JS loaded.');

  // Call the function once the page is loaded
  displayGame();
});


function displayGame() {
  // Define the function here.
  var board = $('#board');
  board.empty();

  for (var row = 0; row < 3; row++) {
    var rowEl = $('<div>').addClass('row').appendTo(board);
    for (var col = 0; col < 3; col++) {
      $('<div>').addClass('square').appendTo(rowEl);
    }
  }
}

$(function() {
  console.log('Loaded, bro');
  startGame();

});

function startGame() {
  var gamePieces = $('.piece');
  gamePieces.on('click', addPiece);
}

var addPiece = function(){
  var piece = $(this);
  if (piece !== 'red') {
    piece.addClass('red');
    // piece.toggleClass('black');
  }
  piece.toggleClass('black');
}

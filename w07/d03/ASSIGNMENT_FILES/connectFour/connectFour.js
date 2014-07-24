$(function() {
  console.log('Loaded, bro');
  startGame();
});

function startGame() {
  var gamePieces = $('.piece');
  var turn = 0;
  gamePieces.click(function() {
    var piece = findPiece(parseInt(this.id));
    if (piece){
      var nextPiece = piece.attr('id') - 7;

      if (turn % 2 === 0) {
        piece.toggleClass('red').toggleClass('playable');
        turn += 1;
        setNext(nextPiece);
      } else if (turn % 2 === 1) {
        piece.toggleClass('black').toggleClass('playable');
        turn += 1;
        setNext(nextPiece);
      }
    }
      
  })
}

function setNext(index) {
  if (index >= 0) {
    $('#' + index).toggleClass('playable');
  }
}

function findPiece(clickedID) {
  for (var i = 0; i < 7; i++) {
    if($('#' + clickedID).hasClass('playable')) {
      return $('#'+ clickedID);
    } else {
      clickedID += 7;
    }
  }
  return null;
}
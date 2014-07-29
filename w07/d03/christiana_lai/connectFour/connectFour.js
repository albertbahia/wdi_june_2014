$(function() {
  console.log('JavaScript loaded >>');
  startGame();
  turn = 0;
  $('.piece').on('click', makeMove);
  $('.refresh-button').on('click', refreshPage);
});

function startGame() {
  var gamePieces = $('.piece');
  gamePieces.mouseenter(function(){
    $(this).addClass('hover');
  });
  gamePieces.mouseleave(function(){
    $(this).removeClass('hover');
  });
}


var changeColor = function(piece) {
  if (piece.hasClass('red') || piece.hasClass('black')) {
    // if piece has has already been played, don't do anything.
  } else {
    if (turn % 2 === 0) {
      piece.addClass('red taken');
    } else {
      piece.addClass('black taken');
    }
    turn++;
  }
};

var makeMove = function() {
  var piece = $(this);
  var pieceArray = piece.parent().children('.piece');
  // getting index of piece that we clicked on
  var pieceIndex = pieceArray.index(piece);
  // only if last piece in column is filled can next move be made
  if (pieceIndex === 5) {
    changeColor(piece);
  // preceding piece must be taken before moves can be made
  } else if (pieceArray.eq(pieceIndex + 1).hasClass('taken')) {
    changeColor(piece);
  }
};

var refreshPage = function() {
  var board = $('.piece');
  for (var i = 0; i < board.length; i++) {
    board.removeClass('red').removeClass('black');
  }
};

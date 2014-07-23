$(function() {
  console.log('JavaScript loaded >>');
  startGame();
  turn = 0;
  $('.piece').on('click', makeMove);
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
  console.log(piece.index());
  if (piece.index() === 5) {
    changeColor(piece);
  } else {
  }
};

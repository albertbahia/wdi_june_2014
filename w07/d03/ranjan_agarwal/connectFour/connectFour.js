var turn;
$(function() {
  console.log('Loaded, bro');
  startGame();
  turn = 0;
  // $('.piece').click(changeColor);
  $('.piece').click(makeMove);
});

function startGame() {
  var gamePieces = $('.piece');
  gamePieces.mouseenter(function(){
    $(this).addClass('hover')
  });
  gamePieces.mouseleave(function(){
    $(this).removeClass('hover')
  });
};

var changeColor = function(piece) {
  if (!piece.hasClass('red') && !piece.hasClass('black')) {
    if(turn % 2 === 0) {
      piece.addClass('red taken');

      turn++;
    } else {
      piece.addClass('black taken');
      turn++;
    }
  }
};

var makeMove = function() {
  var piece = $(this);
  var pieceArray = piece.parent().children('.piece');
  var pieceIndex = pieceArray.index(piece);
  if (pieceIndex === 5) {
    changeColor(piece);
  } else if (pieceArray.eq(pieceIndex + 1).hasClass('taken')) {
    changeColor(piece);
  }
};

var checkHorizontal = function() {

}

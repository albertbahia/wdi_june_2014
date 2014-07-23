$(function() {
  console.log('JavaScript loaded >>');
  startGame();
  $('.piece').on('click', changeColor);
  turn = 0;
});

function startGame() {
  var gamePieces = $('.piece');
  gamePieces.mouseenter(function(){
    $(this).addClass('hover')
  });
  gamePieces.mouseleave(function(){
    $(this).removeClass('hover')
  });
}

var changeColor = function() {
  var piece = $(this);
  if (piece.hasClass('red') || piece.hasClass('black')) {
    // if peice has has already been played, don't do anything.
  } else {
    if (turn % 2 === 0) {
      piece.addClass('red');
    } else {
      piece.addClass('black');
    }
    turn++;
  }
};

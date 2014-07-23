$(function() {
  console.log('Loaded, bro');
  startGame();

  $('.piece').click(pieceClick);
});

function startGame() {
  var gamePieces = $('.piece');
  // gamePieces.mouseenter(function(){
  //   $(this).addClass('hover')
  // });
  // gamePieces.mouseleave(function(){
  //   $(this).removeClass('hover')
  // });
}

var num = 0;
var pieceClick = function() {
  piece = $(this);
  if(num === 0){
    piece.addClass('red');
    num = 1;
  } else {
    piece.addClass('black');
    num = 0;
  }
}

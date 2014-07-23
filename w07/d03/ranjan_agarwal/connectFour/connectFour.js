var turn;
$(function() {
  console.log('Loaded, bro');
  startGame();
  turn = 0;
  $('.piece').click(changeColor);
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
  if (!piece.hasClass('red') && !piece.hasClass('black')) {
    if(turn % 2 == 0) {
      piece.addClass('red');
      turn++;
    } else {
      piece.addClass('black');
      turn++;
    }
  }

}

$(function() {
  console.log('Loaded, bro');
  startGame();

  // Listeners go here:
  // When click on piece, turn color
  $('.piece').on('click', turnColor);

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

function turnColor() {
  var piece = $(this);

  // if piece's class !== .red, turn to .red
  if (!piece.hasClass('red')) {
    piece.removeClass('black').addClass('red');
  }
  // else if piece's class === .red, turn to black
  else {
    piece.removeClass('red').addClass('black');
  }
}

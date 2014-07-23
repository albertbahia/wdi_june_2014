$(function() {
  console.log('Loaded, bro');
  startGame();
  $('.piece').on('click', makeEmRed);
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

var makeEmRed = function() {
  var piece = $(this);
  piece.css('background-color', 'red');
};

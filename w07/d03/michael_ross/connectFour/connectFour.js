$(function() {
  console.log('Loaded, bro');
  startGame();
  $('.piece').on('click', makeRed);
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


var makeRed = function() {
  var button = $(this);
  button.addClass('red');

};

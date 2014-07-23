$(function() {
  console.log('Loaded, bro');
  startGame();

  // Listeners:

  // When click on piece, turn red
  $('.piece').on('click', turnRed);

  // 






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


function turnRed() {
  $(this).css('background-color', 'red');
}

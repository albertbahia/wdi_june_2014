$(function() {
  console.log('Khadijah');
  startGame();
});

function startGame() {
  var gamePieces = $('.piece');

  gamePieces.on('click', toggle );

}
  var toggle = function() {
    if ($(this).hasClass('red')) {
      $(this).removeClass('red');
      $(this).addClass('black');
    } else {
      $(this).removeClass('black');
      $(this).addClass('red');
    } 
  }


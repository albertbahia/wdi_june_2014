$(function() {
  console.log('Loaded, bro');
  startGame();
});

function startGame() {
  $('.piece').click(makePieceRed);
}

function makePieceRed() {
  $(this).toggleClass('red');
}

$(function() {
  console.log('Loaded, bro');
  startGame();
});

function startGame() {
  $('.piece').click(makePieceBlack);
  $('.piece').click(makePieceRed);
}

function makePieceRed() {
  $(this).toggleClass('red');
}

function makePieceBlack() {
  $(this).toggleClass('black', $(this).hasClass('red'));
}

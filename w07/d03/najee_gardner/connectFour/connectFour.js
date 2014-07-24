$(function() {
  console.log('Loaded, bro');
  startGame();
});

var currentPlayer = 'red';

function startGame() {
  $('.piece').click(changePieceColor);
}

function changePieceColor() {
  if(!$(this).hasClass('black') && !$(this).hasClass('red')) {
    $(this).addClass(currentPlayer);
    toggleTurn();
  }
}

function toggleTurn() {
  if (currentPlayer === 'red') {
    currentPlayer = 'black';
  } else {
    currentPlayer = 'red';
  }
}

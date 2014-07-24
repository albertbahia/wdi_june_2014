$(function() {
  console.log('Loaded, bro');
  startGame();
  $('.piece').on('click', addClass);
});

function startGame() {
  var gamePieces = $('.piece');
}


var addClass = function() {
  var button = $(this);
  if (button.hasClass('red')) {
    button.toggleClass('black').removeClass('red');
  } else {
    button.toggleClass('red').removeClass('black')
  }
};

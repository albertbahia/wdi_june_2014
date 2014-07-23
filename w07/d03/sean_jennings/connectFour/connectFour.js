$(function() {
  console.log('Loaded, bro');
  startGame();
});



function startGame() {
  // gamePieces is a jquery object
  var gamePieces = $('.piece');

  gamePieces.on('click', changeColor);
}

var changeColor = function() {

  if ($(this).hasClass('red')) {

    $(this).toggleClass('black')
  } else {

    $(this).toggleClass('red');
  }
}

// if current piece is red
//   change it to black
// else
//   change it to red
// end

$(function() {
  console.log('Loaded, bro');
  startGame();

  // Listeners go here:
  // When click on piece, turn color
  $('.piece').on('click', changeColor);

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

// function changeColor() {
//   var piece = $(this);
//
//   // if piece's class !== .red, turn to .red
//   if (!piece.hasClass('red')) {
//     piece.removeClass('black').addClass('red');
//   }
//   // else if piece's class === .red, turn to black
//   else {
//     piece.removeClass('red').addClass('black');
//   }
// }

function makeMove() {
  var piece = $(this);
  var turn = 0;
  var siblingsBelow = (piece.siblings():lt(piece.index()));

  if (piece.hasClass('piece 1')) {
    if (!piece.hasClass('red') || !piece.hasClass('black')) {
      if (turn % 2 === 0) {
        piece.addClass('red');
        turn++;
      } else {
        piece.addClass('black');
        turn++;
      }
    }
  }
  else {
      if (piece.hasClass('red') || piece.hasClass('black')) {
        alert("This spot's taken");
      } else {
          if (siblingsBelow.hasClass ...)
          for (var i = 0; i < array.length; i++) {
            array[i]
          }
      }
  }
}
































//

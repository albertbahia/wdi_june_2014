var turn;
$(function() {
  console.log('Loaded, bro');
  startGame();
  turn = 0;
});

function startGame() {
  $('.piece').on('click', addPiece);
  // $('.piece').on('click', playerChange);
}
///////////////////////////////////
//        Make It Stick!         //
///////////////////////////////////

var addPiece = function(){
  console.log('piece was added')
  var piece = $(this);
  if (piece.hasClass('red') === false && piece.hasClass('black') === false) {
    if (turn % 2 === 0) {
      piece.addClass('red');
      turn++;
    } else if (turn % 2 === 1) {
      piece.addClass('black');
      turn++;
    }
  }
}


////////////////////////////////////////////////////////////////////////
// Create the rows for putting in pieces only on bottom.(doesn't work)//
////////////////////////////////////////////////////////////////////////
//   piece1 = $('.piece').eq(5),
//   piece2 = $('.piece').eq(11),
//   piece3 = $('.piece').eq(17),
//   piece4 = $('.piece').eq(23),
//   piece5 = $('.piece').eq(29),
//   piece6 = $('.piece').eq(35),
//   piece7 = $('.piece').eq(41)
//   var row = $('<div="row">').appendTo('#gameboard-container')
//   row.append(piece1, piece2, piece3, piece4, piece5, piece6, piece7)


/////////////////////////////////////////
// Toggles pieces between red and black//
/////////////////////////////////////////
//   if ($(this).hasClass('red')){
//     $(this).removeClass('red').addClass('black');
//   } else {
//     $(this).removeClass('black').addClass('red');
//   }
// }

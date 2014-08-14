$(function() {
  console.log('Loaded, bro');
  startGame();
  $('.piece').on('click', makeItStick);
});


function startGame() {
}

// var validPieces = [];
// for (var i = 0; i <= 6; i++) {
//   var column = $('.column').eq(i);
//   var piece = column.children().last();
//   $('validPieces').add(piece);
// }


// var makeEmRed = function() {
//   var piece = $(this);
//   var nextPiece = piece.parent().children().last();
//   if (nextPiece.attr('class') === 'piece') {
//     for (var i = 0; i < 6; i++) {
//       nextPiece = piece.parent().children().eq(i)
//       if (nextPiece.attr('class') !== 'piece') {
//         nextPiece = piece.parent().children().eq(i-1);
//         break
//       }
//     }
//   }
//   if ($('.red').length === $('.black').length) {
//     nextPiece.attr('class', 'piece red');
//   } else {
//     nextPiece.attr('class', 'piece black');
//   }
// }
// }


function makeItStick(){
  var currentPiece = $(this);
  var nextPiece;

  if (currentPiece.parent().children().last().attr('class') === 'piece') {

    if ($('.red').length === $('.black').length) {

      nextPiece = currentPiece.parent().children().last();
      nextPiece.attr('class', 'piece red');
    } else {
      nextPiece = currentPiece;
      nextPiece.attr('class', 'piece black');
    }
  } else {
    for (var i = 0; i <= 5; i++){
      nextPiece = currentPiece.parent().children().eq(i);
      if (nextPiece.attr('class') !== 'piece') {
        nextPiece = currentPiece.parent().children().eq(i-1);
        break;
      }
    }
    if ($('.red').length === $('.black').length) {
      nextPiece.attr('class', 'piece red');
    } else {
      nextPiece.attr('class', 'piece black');
    }
  }
}

//
//

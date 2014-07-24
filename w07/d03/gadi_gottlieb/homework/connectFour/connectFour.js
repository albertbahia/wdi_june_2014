var turn;
$(function() {
  console.log('Loaded, bro');
  startGame();
  turn = 0;
  startGame();
});

function startGame() {
  $('.piece').on('click', addPiece);
  // $('.piece').on('click', playerChange);
}

var addPiece = function(){
  console.log('piece was added')
  var piece = $(this);
  if (piece.hasClass('red') === false && piece.hasClass('black') === false) {
    if (turn % 2 == 0) {
      piece.addClass('red');
      turn++;
    } else {
      piece.addClass('black');
      turn++;
    }
  }
}
  // var redPiece = $(this).addClass('red')
  // var blackPiece = $(this).addClass('black')

//   if ($(this).hasClass('red')){
//     $(this).removeClass('red').addClass('black');
//   } else {
//     $(this).removeClass('black').addClass('red');
//   }
// }



// var playerChange = function(){
//   if ($(this).hasClass('red')){
//     $(this).removeClass('red').addClass('black');
//     $(this);
//   } else {
//     $(this).removeClass('black').addClass('red');
//     $(this);
//   }
// }

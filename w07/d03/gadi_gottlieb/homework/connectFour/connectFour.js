$(function() {
  console.log('Loaded, bro');
  startGame();

});

function startGame() {
  $('.piece').on('click', addPiece);
}

var addPiece = function(){
  console.log('piece was added')
  // var redPiece = $(this).addClass('red')
  // var blackPiece = $(this).addClass('black')

  if ($(this).hasClass('red')){
    $(this).removeClass('red').addClass('black');
  } else {
    $(this).removeClass('black').addClass('red');
  }
}





  //  hasClass('red') !== true) {
  //   $(this).addClass('red');
  // }


// }
//   if (piece !== 'rgba(250,255,255,.5)') {
//     return piece.addClass('red')
//     if (piece.contents() === '<div red>'){
//       piece
//     }
//       {piece.addClass('black')
//     }
//   }
//     piece.addClass('black');
//   }

var playerChange = function(){

}

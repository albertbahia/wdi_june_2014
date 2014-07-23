$(function() {
  console.log('Loaded, bro');
  startGame();
  $('.piece').on('click', makeEmRed);
});

function startGame() {

}

var makeEmRed = function() {
  var piece = $(this);
  if (piece.attr('class') !== 'piece red' && piece.attr('class') !== 'piece black' ){
    if ($('.red').length === $('.black').length) {
    piece.attr('class', 'piece red');
    } else {
      piece.attr('class', 'piece black');
    }
  }
};


// var makeEmBlack = function() {
//   var piece = $(this);
//   if (piece.css('background-color') !== 'rgb(255,0,0)') && (piece.css('background-color') !== 'rgb(0,0,0)') {
//     piece.css('background-color', 'black');
//   }
//   $('.piece').on('click', makeEmRed);
// };
//
//
// $('.red').lenght

$(function() {
  console.log('Loaded, bro');
  startGame();
  $('#button').on('click', clearGameboard);
});

function startGame() {
  var gamePieces = $('.piece');
};


function startGame() {
  var gamePieces = $('.piece');
  var turn = 0;
  gamePieces.click(function() {
    var piece = findPiece(parseInt(this.id));
    if(piece) {
      var nextPiece = piece.attr('id') - 7;
      if (turn % 2 === 0) {
        piece.addClass('red').toggleClass('playable');
        turn += 1;
        setNext(nextPiece);
      } else if (turn % 2 === 1 ) {
        piece.addClass('black').toggleClass('playable');
        turn += 1;
        setNext(nextPiece);
      }
    }
  })
  console.log(gamePieces);
};

function setNext(index) {
  if (index >= 0 ) {
    $('#' + index).addClass('playable')
  }
};

function findPiece(clickedID) {
  for (var i = 0; i < 7; i++) {
    console.log(clickedID);
    if($('#' + clickedID).hasClass('playable')) {
      return $('#' + clickedID);
    } else {
      clickedID += 7;
    }
  }
  return null;
};

// function clearGameboard() {
//   var pieces = $('.piece');
//   for (var i = 0; i < pieces.length; i++) {
//     pieces.removeClass('red').removeClass('black');
//   }
// };

var redTogether = function (piece1, piece2) {
  var reds = piece1.hasClass('red') && piece2.hasClass('red');
  return reds;
};

var blackTogether = function(piece1, piece2) {
  var black = piece1.hasClass('black') && piece2.hasClass('black');
};


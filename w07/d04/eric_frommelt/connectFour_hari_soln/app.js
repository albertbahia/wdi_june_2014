$(function() {
  console.log('Loaded bro.');
  startGame();
});

var startGame = function() {
  var turn = 0;

  // A semi transparent div that is placed right on
  // top of a circle through css
  var highlight = $('<div>').addClass('highlight');

  $('.circle').click(function() {
    var piece = $(this);
    var pieceToPlay = lowestPiece(piece.parent());
    if (isPlayable(piece) && pieceToPlay) {
      // Append the red or black class
      // depending on whether turn is odd or even
      if (turn % 2 === 0) {
        pieceToPlay.addClass('red');
      } else {
        pieceToPlay.addClass('black');
      }

      //check for row win
      if (checkWin(checkRow($(pieceToPlay).index()))) {
        console.log(checkWin(checkRow($(pieceToPlay).index)) + ' wins');
        //check for column win
      } else if (checkWin(checkColumn($(pieceToPlay).parent().index()))) {
        console.log(checkWin(checkColumn($(pieceToPlay).parent().index())) + ' wins');
      }


      turn++;

      // UI - move the highlight up
      if (isPlayable(piece)) {
        highlight.appendTo(pieceToPlay.prev());
      }
    }
  });

  // ---------------------
  // This is just cool UI stuff.
  // Not necessary for solution.
  $('.circle').mouseenter(function() {
    var lastPiece = lowestPiece($(this).parent());
    if (isPlayable($(this))) {
      highlight.appendTo(lastPiece);
    } else {
      highlight.remove();
    }
  });

  $('.circle').mouseleave(function() {
    highlight.remove();
  });
  // ---------------------
}

// Accepts a piece
// Returns true if piece is vacant
// Returns false if piece is filled
var isPlayable = function(piece) {
  return !(piece.hasClass('red') || piece.hasClass('black'));
}

// Accepts a column
// Returns the lowest playable piece in the same column
var lowestPiece = function(column) {
  var columnPieces = column.children();
  for (var i = columnPieces.length - 1; i >= 0; i--) {
    if (isPlayable(columnPieces.eq(i))) {
      return columnPieces.eq(i);
    }
  }
  return false;
}

function checkRow(row) {

  var results = [];
  var column = $('.column');
  for (var i = 0; i < column.length; i++) {
    var piece = column.eq(i).children().eq(row);
    if (piece.hasClass('red')) {
      results.push('red');
    }  else if (piece.hasClass('black')) {
      results.push('black');
    } else {
      results.push('unplayed');
    }
  }
  return results;
}

function checkColumn(column) {
  var results = [];
  var column = $('.column').eq(column).children(0);
  for (var i = 0; i < column.length; i++) {
    var piece = column.eq(i);
    if (piece.hasClass('red')) {
      results.push('red');
    } else if (piece.hasClass('black')) {
      results.push('black');
    } else {
      results.push('unplayed');
    }
  }
  return results;
}

function checkWin(array) {
  for (var i = 0; i < array.length; i++) {
    if (array[i] != 'unplayed') {
      var piece1 = array[i];
      var piece2 = array[i+1];
      var piece3 = array[i+2];
      var piece4 = array[i+3];
      if (piece1 === piece2 && piece2 === piece3 && piece3 === piece4) {
        return array[i];
      }
    }
  }
  console.log(piece1);
  console.log(piece2);
  console.log(piece3);
  console.log(piece4);
  return false;
}

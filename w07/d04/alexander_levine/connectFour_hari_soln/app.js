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
      // Check to Win Logic Goes here
      if (checkForWin(getDownDiagonal($(pieceToPlay).attr('id')))) {
        console.log(checkForWin(getDownDiagonal($(pieceToPlay).attr('id'))) + " wins!");
      } else if (checkForWin(getUpDiagonal($(pieceToPlay).attr('id')))) {
        console.log(checkForWin(getUpDiagonal($(pieceToPlay).attr('id'))) + " wins!");
      } else if (checkForWin(getColumnValues($(pieceToPlay).parent().index()))) {
        console.log(checkForWin(getColumnValues($(pieceToPlay).parent().index())) + " wins!");
      } else if (checkForWin(getRowValues($(pieceToPlay).index()))) {
        console.log(checkForWin(getRowValues($(pieceToPlay).index())) + " wins!");
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
};

// Accepts a piece
// Returns true if piece is vacant
// Returns false if piece is filled
var isPlayable = function(piece) {
  return !(piece.hasClass('red') || piece.hasClass('black'));
};

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
};

function getRowValues(rowNumber) {
  var results = [];
  var columns = $('.column');
  for (var i = 0; i < columns.length; i++) {
    var piece = columns.eq(i).children().eq(rowNumber);
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

function getColumnValues(columnNumber) {
  var results = [];
  var column = $('.column').eq(columnNumber).children(0);
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

function getDownDiagonal(circleID) {
  var results = [];
  var circlePiece = 0;
  if (circleID >= 7) {
    for (var i = 0; circleID >= 7; i++) {
      circleID -= 7;
      circlePiece = circleID;
    }
  } else {
    circlePiece = circleID;
  }
  for (var j = 0; circlePiece <= 41; j++) {
    var piece = $('#' + circlePiece);
    if (piece.hasClass('red')) {
      results.push('red');
    } else if (piece.hasClass('black')) {
      results.push('black');
    } else {
      results.push('unplayed');
    }
    circlePiece += 7;
    if (circlePiece % 6 === 0) {
      return results;
    }
  }
  return results;
}

function getUpDiagonal(circleID) {
  var results = [];
  var circlePiece = 0;
  if (circleID > 5) {
    for (var i = 0; circleID % 6 !== 5 && circleID > 5; i++) {
      circleID -= 5;
      circlePiece = circleID;
    }
  } else {
    circlePiece = circleID;
  }
  for (var j = 0; circlePiece <= 38; j++) {
    var piece = $('#' + circlePiece);
    if (piece.hasClass('red')) {
      results.push('red');
    } else if (piece.hasClass('black')) {
      results.push('black');
    } else {
      results.push('unplayed');
    }
    circlePiece += 5;
  }
  return results;
}

function checkForWin(array) {
  for (var i = 0; i < array.length; i++) {
    if (array[i] !== 'unplayed') {
      var a1 = array[i];
      var a2 = array[i+1];
      var a3 = array[i+2];
      var a4 = array[i+3];
      if (a1 === a2 && a2 === a3 && a3 === a4) {
        return array[i];
      }
    }
  }
  return false;
}

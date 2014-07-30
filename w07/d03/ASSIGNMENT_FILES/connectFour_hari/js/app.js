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

      var winner = checkWin(pieceToPlay);
      if (winner) {
        alert(winner + ' wins!');
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
  for (var i in columnPieces) {
    if (isPlayable(columnPieces.eq(columnPieces.length - i - 1))) {
      return columnPieces.eq(columnPieces.length - i - 1);
    }
  }
  return false;
}

// Accepts a piece
// Returns a character representing the color of the piece
var pieceColor = function(piece) {
  if (piece.hasClass('red')) {
    return 'r';
  } else if (piece.hasClass('black')) {
    return 'b';
  } else {
    return 'e'; // e for empty
  }
}

// Accepts a piece
// Returns an array of pieces in that column
var getColumn = function(piece) {
  return piece.parent().children();
}

// Accepts a piece
// Returns an array of pieces in that row
var getRow = function(piece) {
  var index = piece.index();
  return $('.circle:nth-child(' + (index + 1) + ')');
}

// Accepts a piece
// Returns an array of colors in that forward diagonal
var getForwardDiagColors = function(piece) {
  var numCols = $('.column').length;
  var numRows = $('.column').first().children().length;
  var pieceRow = piece.index();
  var pieceCol = piece.parent().index();
  var colors = [];
  var startRow;
  var startCol;
  var currPiece;

  // Find the starting point of the diagonal
  if (pieceRow + pieceCol > numCols - 1) {
    startRow = pieceRow - (numCols - pieceCol - 1);
    startCol = numCols - 1;
  } else {
    startRow = 0;
    startCol = pieceCol + pieceRow;
  }

  // Iterate through the pieces in the diagonal
  var row = startRow;
  var col = startCol;
  while (row < numRows && col >= 0) {
    currPiece = $('.column').eq(col).children().eq(row);
    colors.push(pieceColor(currPiece));
    row++;
    col--;
  }
  return colors;
}

// Accepts a piece
// Returns an array of colors in that back diagonal
var getBackDiagColors = function(piece) {
  var numCols = $('.column').length;
  var numRows = $('.column').first().children().length;
  var pieceRow = piece.index();
  var pieceCol = piece.parent().index();
  var startRow;
  var startCol;
  var colors = [];
  var currPiece;

  // Find the starting point of the diagonal
  if (pieceRow > pieceCol) {
    startRow = pieceRow - pieceCol;
    startCol = 0;
  } else {
    startRow = 0;
    startCol = pieceCol - pieceRow;
  }

  // Iterate through the pieces in the diagonal
  var row = startRow;
  var col = startCol;
  while (row < numRows && col < numCols) {
    currPiece = $('.column').eq(col).children().eq(row);
    colors.push(pieceColor(currPiece));
    row++;
    col++;
  }
  return colors;
}

// Accepts an array of pieces
// Returns an array of colors
var toColors = function(pieces) {
  var colors = [];
  for (var i = 0; i < pieces.length; i++) {
    var piece = pieces.eq(i);
    colors.push(pieceColor(piece));
  }
  return colors;
}

// Accepts an array of colors
// Returns winner as string if winning combo found
// Returns null if no winning combo found
var checkFour = function(colors) {
  var joinedColors = colors.join('');
  if (joinedColors.indexOf('rrrr') > -1) {
    return 'red';
  } else if (joinedColors.indexOf('bbbb') > -1) {
    return 'black';
  } else {
    return null;
  }
}

// Accepts a piece
// Returns column winner
// Returns null for no winner
var checkColumn = function(piece) {
  var pieces = getColumn(piece);
  var colors = toColors(pieces);
  return checkFour(colors);
}

// Accepts a piece
// Returns row winner
// Returns null for no winner
var checkRow = function(piece) {
  var pieces = getRow(piece);
  var colors = toColors(pieces);
  return checkFour(colors);
}

// Accepts a piece
// Returns a diagonal winner
// Returns null for no winner
var checkDiags = function(piece) {
  var forwardDiagColors = getForwardDiagColors(piece);
  var backDiagColors = getBackDiagColors(piece);
  var winner = checkFour(forwardDiagColors) || checkFour(backDiagColors);
  return winner ? winner : null;
}

// Accepts a piece
// Returns winner using checkColumn, checkRow, checkDiags
// Returns null for no winner
var checkWin = function(piece) {
  var columnWinner = checkColumn(piece);
  var rowWinner = checkRow(piece);
  var diagWinner = checkDiags(piece);
  if (columnWinner) {
    return columnWinner;
  } else if (rowWinner) {
    return rowWinner;
  } else if (diagWinner) {
    return diagWinner;
  } else {
    return null;
  }
}

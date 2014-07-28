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

      turn++;

      // UI - move the highlight up
      if (isPlayable(piece)) {
        highlight.appendTo(pieceToPlay.prev());
      }
    }
  });

  // ---Determines winner-------
  for(var i = 0; i <= 6; i++) {
    pieces = getColumn(i);
    colors = piecesToColors(pieces);
    checkWin(colors);
  }

  // ---------------------------

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

// ----Determine winning algorithm-----

var getColumn = function(columNum) {
  var col = $('#column-' + columNum);
  var pieces = col.children();
  return pieces;
};

var getRow = function(rowNum) {
  var row = [];
  for(var b = 0; b <= 6; b++) {
    var column = $('#column-' + b);
    rowPieces = column.children().eq(rowNum);
    row.push(rowPieces);
  }
  return row;
};

var getDiagonal = function() {
  var diag = [];
  for(var y = 0; y <= 6; y++) {
    var col = $('#column-' + y);
    for(var x = 0; x <= 5; x++) {
      var piece = col.children().eq(x + 1);
    }
    diag.push(piece);
  }
  return diag;
};

var piecesToColors = function(pieces) {
  var colors = [];
  for(var p = 0; p < pieces.length; p++) {
    if (pieces.eq(p).hasClass('red')) {
      colors.push('red');
    } else if (pieces.eq(p).hasClass('black')) {
      colors.push('black');
    } else {
      colors.push('empty');
    }
  }
  return colors;
};

var checkWin = function(colors) {
  var concColors = colors.join('');
  if(concColors.indexOf('redredredred') > -1) {
    alert('Red wins!');
  } else if (concColors.indexOf('blackblackblackblack') > -1) {
    alert('Black wins!');
  }
};

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

var checkWin = function(circle, )

var sameTogether = function(circle1, circle2) {
  var red = circle1.hasClass('red') && circle2.hassClass('red');
  var black = circle1.hasClass('red') && circle2.hassClass('red');
  return (red || black);
};

var circleBelow = function(circle) {
  var inColumn = circle.siblings();
  var row = inColumn.index(circle);
  //gets row, gets column, adds 1 to index of 
  //circle in column to get one below
  return inColumn.eq(row + 1);
};

var circleLeft = function(circle) {
  var column = circle.parent();
  var row = column.children.index(circle);
  return column.prev().children().eq(row);
};

var circleRight = function(circle) {
  var column = circle.parent();
  var row = column.children.index(circle);
  return column.next().children().eq(row);
};

var bottomLeft = function(circle) {
  return circleBelow(circleLeft(circle));
};

var bottomRight = function(circle) {
  return circleBelow(circleRight(circle));
};

var topLeft = function(circle) {
  var column = circle.parent();
  var row = column.children.index(circle);
};
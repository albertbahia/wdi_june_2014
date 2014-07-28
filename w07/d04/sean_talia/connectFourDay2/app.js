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
      };

      turn++;

      // UI - move the highlight up
      if (isPlayable(piece)) {
        highlight.appendTo(pieceToPlay.prev());
      };
    };
    checkBoardForWin();
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
};

// Accepts a column
// Returns the lowest playable piece in the same column
var lowestPiece = function(column) {
  var columnPieces = column.children();
  for (var i = columnPieces.length - 1; i >= 0; i--) {
    if (isPlayable(columnPieces.eq(i))) {
      return columnPieces.eq(i);
    };
  };
  return false;
};

function clearBoard() {
  var allCircles = $('.circle');
  for (var i = 0; i < allCircles.length; i++) {
    allCircles.removeClass('red').removeClass('black');
  };
}

/////////// Function for Checking if Two Circles Have the Same Color ///////////

function sameColor(circle1, circle2) {
  var bothRed = circle1.hasClass('red') && circle2.hasClass('red');
  var bothBlack = circle1.hasClass('black') && circle2.hasClass('black');
  return (bothRed || bothBlack);
}

////////////////// Functions for Getting Neighboring Circles //////////////////

var getCircleBelow = function(circle) {
  var circlesInColumn = circle.parent().children();
  var rowNumber = circlesInColumn.index(circle);
  return circlesInColumn.eq(rowNumber+1);
};

var getCircleToRight = function(circle) {
  var currentColumn = circle.parent();
  var rowNumber = currentColumn.children().index(circle);
  return currentColumn.next().children().eq(rowNumber);
};

var getCircleToLeft = function(circle) {
  var currentColumn = circle.parent();
  var rowNumber = currentColumn.children().index(circle);
  return currentColumn.prev().children().eq(rowNumber);
};

var getCircleBelowRight = function(circle) {
  return getCircleBelow(getCircleToRight(circle));
};

var getCircleBelowLeft = function(circle) {
  return getCircleBelow(getCircleToLeft(circle));
};

///////////// Functions for Checking Win in a Particular Direction /////////////

function connectFour(circle, getNextCircle) {
  // Check to see if circle is filled
  if (circle.hasClass('red') || circle.hasClass('black')) {
    var nextCircle = getNextCircle(circle);
    // Connect 2
    if (sameColor(circle, nextCircle)){
      nextCircle = getNextCircle(nextCircle);
      // Connect 3
      if (sameColor(circle, nextCircle)) {
        nextCircle = getNextCircle(nextCircle);
        // Connect 4!
        if (sameColor(circle, nextCircle)) {
          return true;
        };
      };
    };
  };
  return false;
};

var checkVerticalWin = function(circle) {
  return connectFour(circle, getCircleBelow);
}
var checkHorizontalWin = function(circle) {
  return connectFour(circle, getCircleToRight);
}
var checkForwardDiagWin = function(circle) {
  return connectFour(circle, getCircleBelowRight);
}
var checkBackwardDiagWin = function(circle) {
  return connectFour(circle, getCircleBelowLeft);
}

///////////// Functions for Checking for Winning in Any Direction /////////////

function checkSubGridForWin(beginCol, endCol, beginRow, endRow, checkFunction) {
  var allColumns = $('div.column');
  for (var i = beginCol; i <= endCol; i++) {
    var currentColumnCircles = allColumns.eq(i).children();
    for(var j = beginRow; j <= endRow; j++) {
      var currentCircle = currentColumnCircles.eq(j);
      if(checkFunction(currentCircle)) { return true; };
    };
  };
  return false;
};

function checkBoardForWin(){
  var vertWin = checkSubGridForWin(0, 6, 0, 3, checkVerticalWin);
  var horizWin = checkSubGridForWin(0, 3, 0, 6, checkHorizontalWin);
  var forwardDiagWin = checkSubGridForWin(0, 3, 0, 3, checkForwardDiagWin);
  var backwardDiagWin = checkSubGridForWin(3, 6, 0, 3, checkBackwardDiagWin);
  ///////// Did Anyone Win? /////////
  if(vertWin || horizWin || forwardDiagWin || backwardDiagWin) {
    alert('Game Over!');
    clearBoard();
  };
};

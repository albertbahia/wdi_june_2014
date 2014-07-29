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

////// Functions for Checking if Two Circles Match

function bothRed(circle1, circle2) {
  return (circle1.hasClass('red') && circle2.hasClass('red'));
};

function bothBlack(circle1, circle2) {
  return (circle1.hasClass('black') && circle2.hasClass('black'));
};

function sameColor(circle1, circle2) {
  return (bothRed(circle1, circle2) || bothBlack(circle1, circle2));
}

////// Functions for Getting Neighboring Circle ///////

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

////// Functions for Checking A Particular Direction ///////

function checkForAWin(circle, getNextCircle) {
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
  return checkForAWin(circle, getCircleBelow);
}
var checkHorizontalWin = function(circle) {
  return checkForAWin(circle, getCircleToRight);
}
var checkForwardDiagWin = function(circle) {
  return checkForAWin(circle, getCircleBelowRight);
}
var checkBackwardDiagWin = function(circle) {
  return checkForAWin(circle, getCircleBelowLeft);
}

//////// Function for Checking for Winning in Any Direction /////////

function checkSubGridForWin(beginCol, endCol, beginRow, endRow, checkFunction) {
  var allColumns = $('div.column');
  for (var i = beginCol; i < endCol; i++) {
    var currentColumnCircles = allColumns.eq(i).children();
    for(var j = beginRow; j < endRow; j++) {
      var currentCircle = currentColumnCircles.eq(j);
      if(checkFunction(currentCircle)) {
        return true;
      };
    };
  };
  return false;
};

function checkBoardForWin(){
  var allColumns = $('div.column');
  var vertWin = checkSubGridForWin(0, 7, 0, 3, checkVerticalWin);
  var horizWin = checkSubGridForWin(0, 4, 0, 7, checkHorizontalWin);
  var forwardDiagWin = checkSubGridForWin(0, 4, 0, 3, checkForwardDiagWin);
  var backwardDiagWin = checkSubGridForWin(3, 7, 0, 3, checkBackwardDiagWin);
  ///////// Did Anyone Win? /////////
  if(vertWin || horizWin || forwardDiagWin || backwardDiagWin) {
    alert('Game Over!');
    clearBoard();
    return true;
  } else {
    return false;
  };
};

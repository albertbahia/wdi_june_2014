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
    checkForVertWinner(vertWin);
    checkForHorizWinner(horizWin);
    checkForDiagRightWinner(rightDiagWin);
    checkForDiagLeftWinner(leftDiagWin);
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

////==============
// FIND WINNERS
//==========================

//determine if two pieces side by side are the same
var bothRed = function(circle, circle2) {
  var result = circle.hasClass('red') && circle2.hasClass('red');
  return result;
}

var bothBlack = function(circle, circle2) {
  var result = circle.hasClass('black') && circle2.hasClass('black');
  return result;
}

//find circle on the right to check horizontal
var circleOnRight = function(circle) {
  var currentColumn = circle.parent()
  var circlesInColumn = circle.parent().children();
  //find current circle row number
  var row = circle.index();
  //find column to right
  var adjacentColumn = currentColumn.next();
  //find adjecent circle to right
  var adjacentCircle = adjacentColumn.children().eq(row);
  return adjacentCircle;
}

//find circle on left to check horizontal
var circleOnLeft = function(circle) {
  var currentColumn = circle.parent()
  var circlesInColumn = circle.parent().children();
  //find current circle row number
  var row = circle.index();
  //find column to left
  var adjacentColumn = currentColumn.prev();
  //find adjecent circle to left
  var adjacentCircle = adjacentColumn.children().eq(row);
  return adjacentCircle;
}

//find circle below to check vertical
var circleBelow = function(circle) {
  var currentColumn = circle.parent()
  var circlesInColumn = circle.parent().children();
  //find current circle row number
  var row = circle.index();
  //find circle below
  var belowCircle = currentColumn.children().eq(row+1);
  return belowCircle;
}

//find circle at bottom right to check diagonal
var circleRightDiag = function(circle) {
  var currentColumn = circle.parent()
  var circlesInColumn = circle.parent().children();

  //find row to right bottom
  var rightDiagCircle = circleOnRight(circleBelow(circle));
  return rightDiagCircle;
}

//find circle at bottom left to check diagonal
var circleLeftDiag = function(circle) {
  var currentColumn = circle.parent();
  var circlesInColumn = circle.parent().children();

  //find row to left bottom
  var leftDiagCircle = circleBelow(circleOnLeft(circle));
  return leftDiagCircle;
}

//check horizontal win
var horizWin = function(circle) {
  if(circle.hasClass('red') || circle.hasClass('black')){
    var nextCircle = circleOnRight(circle);

    if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){
       nextCircle = circleOnRight(nextCircle)

      if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){
         nextCircle = circleOnRight(nextCircle)

        if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){

          return true;
        }
      }
    }
  }
  return false;
}

//check vertical win
var vertWin = function(circle) {
  if(circle.hasClass('red') || circle.hasClass('black')){
    var nextCircle = circleBelow(circle);

    if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){
      nextCircle = circleBelow(nextCircle)

      if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){
        nextCircle = circleBelow(nextCircle)

        if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){

          return true;
        }
      }
    }
  }
  return false;
}

//check diagonal win right
var rightDiagWin = function(circle) {
  if(circle.hasClass('red') || circle.hasClass('black')){
    var nextCircle = circleRightDiag(circle);

    if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){
      nextCircle = circleRightDiag(nextCircle)

      if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){
        nextCircle = circleRightDiag(nextCircle)

        if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){

          return true;
        }
      }
    }
  }
  return false;
}

//check diagonal win left
var leftDiagWin = function(circle) {
  if(circle.hasClass('red') || circle.hasClass('black')){
    var nextCircle = circleLeftDiag(circle);

    if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){
      nextCircle = circleLeftDiag(nextCircle)

      if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){
        nextCircle = circleLeftDiag(nextCircle)
        if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){

          return true;
        }
      }
    }
  }
  return false;
}

//check for vert winner
var checkForVertWinner = function(fxn) {
  var allColumns = $('div.column');
  // loop through columns to find vert wins
  for(var i=0;i<7;i++) {
    var currentColumn = allColumns.eq(i);
    var currentCircles = currentColumn.children();
    //loop through first 3 circles
    for(var j=0;j<3;j++) {
      var currentCircle = currentCircles.eq(j);
      if(fxn(currentCircle)){
        if(currentCircle.hasClass('red')){
          alert('Red is the winner.')
        } else {
          alert('Black is the winner.')
        }
        return true;
      }
    }
  }
  return false;
}

//check for horiz winner
var checkForHorizWinner = function(fxn) {
  var allColumns = $('div.column');
  // loop through first 4 columns
  for(var i=0;i<3;i++) {
    var currentColumn = allColumns.eq(i);
    var currentCircles = currentColumn.children();
    //loop thorugh circles
    for(var j=0;j<6;j++) {
      var currentCircle = currentCircles.eq(j);
      if(fxn(currentCircle)){
        if(currentCircle.hasClass('red')){
          alert('Red is the winner.')
        } else {
          alert('Black is the winner.')
        }
        return true;
      }
    }
  }
  return false;
}

//check for right diag winner
var checkForDiagRightWinner = function(fxn) {
  var allColumns = $('div.column');
  // loop through first 4 columns
  for(var i=0;i<3;i++) {
    var currentColumn = allColumns.eq(i);
    var currentCircles = currentColumn.children();
    //loop thorugh first 3 circles
    for(var j=0;j<3;j++) {
      var currentCircle = currentCircles.eq(j);
      if(fxn(currentCircle)){
        if(currentCircle.hasClass('red')){
          alert('Red is the winner.')
        } else {
          alert('Black is the winner.')
        }
        return true;
      }
    }
  }
  return false;
}

//check for left diag winner
var checkForDiagLeftWinner = function(fxn) {
  var allColumns = $('div.column');
  // loop columns 3 to 6
  for(var i=3;i<7;i++) {
    var currentColumn = allColumns.eq(i);
    var currentCircles = currentColumn.children();
    //loop thorugh first 3 circles
    for(var j=0;j<3;j++) {
      var currentCircle = currentCircles.eq(j);
      if(fxn(currentCircle)){
        if(currentCircle.hasClass('red')){
          alert('Red is the winner.')
        } else {
          alert('Black is the winner.')
        }
        return true;
      }
    }
  }
  return false;
}

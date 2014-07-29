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


function bothRed(circle, circle2){
  var ans = (circle.hasClass('red') && circle2.hasClass('red') );
  return ans;
}

function bothBlack(circle, circle2){
  var ans = (circle.hasClass('black') && circle2.hasClass('black') );
  return ans;
}

function getCircleToRight(circle){
  var currentColumn = circle.parent();
  var circlesInColumn = currentColumn.children();

  var rowNumber = circlesInColumn.index(circle);
  var nextColumnCircles = currentColumn.children();
  var nextCircle = nextColumnCircles.eq(rowNumber);

  return nextCircle;
}


function getCircleBelow(circle) {
  var circlesInColumn = circle.parent().children;
  var rowNumber = circlesInColumn.index(circle);
  var nextCircle = circlesInColumn.eq(rowNumber+1)
}

function checkHorizontalWin(circle){
  if(circle.hasClass('red') || circle.hasClass('black')) {
    var nextCircle = getCircleToRight(circle);

    if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){
      var nextCircle = getCircleToRight(circle);

      if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){
        var nextCircle = getCircleToRight(circle);

        if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){
          return true;
          alert("red winner");
        }
      }
    }
  }
  false;
}

function checkVerticalWin(circle){
  if(circle.hasClass('red') || circle.hasClass('black')) {
    var nextCircle = getCircleBelow(circle);

    if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){
      var nextCircle = getCircleBelow(circle);

      if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){
        var nextCircle = getCircleBelow(circle);

        if(bothRed(circle, nextCircle) || bothBlack(circle, nextCircle)){
          return true;
        }
      }
    }
  }
  return false;
}

function getCircleBelowRight(circle) {
  var currentColumn = circle.parent();
  var circlesInColumn = currentColumn.children();

  var rowNumber = circlesInColumn.index(circle);
  var nextColumnCircles = currentColumn.next().children();
  var nextCircle = nextColumnCircles.eq(rowNumber+1);

  return nextCircle;
}

function getCircleBelowLeft(circle) {
  var currentColumn = circle.parent();
  var circlesInColumn = currentColumn.children();

  var rowNumber = circlesInColumn.index(circle);
  var previousColumnCircles = currentColumn.children();
  var nextCircle = nextColumnCircles.eq(rowNumber);

  return nextCircle;
}


function checkBackwardDiagWin(circle) {
  if(circle.hasClass('red') || circle.hasClass('black')){
    var nextCircle = getCircleBelowLeft(circle);

    if(bothRed(circle, nextCircle)||bothBlack(circle, nextCircle)){
      var nextCircle = getCircleBelowLeft(circle);

        if(bothRed(circle, nextCircle)||bothBlack(circle, nextCircle)){
          var nextCircle = getCircleBelowLeft(circle);

            if(bothRed(circle, nextCircle)||bothBlack(circle, nextCircle)){
              return true;
          }
        }
      }
  }
  return false;
}

function checkForwardDiagWin(circle) {
  if(circle.hasClass('red') || circle.hasClass('black')){
    var nextCircle = getCircleBelowRight(circle);

    if(bothRed(circle, nextCircle)||bothBlack(circle, nextCircle)){
      var nextCircle = getCircleBelowRight(circle);

        if(bothRed(circle, nextCircle)||bothBlack(circle, nextCircle)){
          var nextCircle = getCircleBelowRight(circle);

            if(bothRed(circle, nextCircle)||bothBlack(circle, nextCircle)){
              return true;
          }
        }
      }
  }
  return false;
}


function checkForWin(circle) {
  var vertWin;
  var horizWin;
  var forDiagWin;
  var backDiagWin;

  var allColumns = $('div.column');
  //check verticle wins
  for(var i=0;i<7;i++){
      var currentColumn = allColumns.eq(i);
      var currentColumnCircles = currentColumn.children();
      for(var j=0;j<=2;j++){
        var currentCircle = currentColumnCircles.eq(j);
        if(checkVerticalWin(currentCircle)){
          var vertWin = true;
        }
      }
    }
  //check horizontal wins
  var firstFourColumns = allColumns.slice(0,4);

  for(var i=0;i<4;i++){
    var currentColumn = firstFourColumns.eq(i);
    var currentColumnCircles = currentColumn.children();
    for(var j=0;j<=2;j++){
      var currentCircle = currentColumnCircles.eq(j);
      if(checkHorizontalWin(currentCircle)){
        var horizWin = true;
      }
    }
  }
//check for forward diag wins
  for(var i=0;i<4;i++){
    var currentColumn = firstFourColumns.eq(i);
    var currentColumnCircles = currentColumn.children();
    for(var j=0;j<3;j++){
      var currentCircle = currentColumnCircles.eq(j);
      if(checkForwardDiagWin(currentCircle)){
        var forDiagWin = true;
      }
    }
  }
//check for backward diag wins
  for(var i=3;i<7;i++){
    var currentColumn = firstFourColumns.eq(i);
    var currentColumnCircles = currentColumn.children();
    for(var j=0;j<3;j++){
      var currentCircle = currentColumnCircles.eq(j);
      if(checkBackwardDiagWin(currentCircle)){
        var backDiagWin = true;
      }
    }
  }

  if(vertWin||horizWin||forDiagWin||backDiagWin){
    return true;
  }else{
    return false;
  }

}

console.log(checkForWin());

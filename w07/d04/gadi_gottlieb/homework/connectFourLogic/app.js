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
    var x = parseInt((pieceToPlay.parent().attr('id').replace('column-', '')));
    var y = parseInt((pieceToPlay.attr('id').replace('square-', '')));

    var color = squareLocation(x, y);

    //vertical
    var numInARow = 0;
    for(var i=y; i<=5; i++) {
      if(squareLocation(x, i) === color) {
          numInARow++;
      }
    }
    if (numInARow === 4) {
      alert(color + " wins.")
    }
    // alert(numInARow)

    //horizontal
    numInARow = 1;
    for (var i = x+1; i <=6; i++) {
        // alert('i=' + i);
        if(squareLocation(i, y) === color) {
            numInARow++;
        } else {
          break;
        }
      }
    for (var i = x-1; i >=0; i--) {
      // alert('i=' + i);
      if(squareLocation(i, y) === color) {
          numInARow++;
      } else {
        break;
      }
    }
    if (numInARow === 4) {
      alert(color + " wins.")
    }
//diagonal top left to bottom right

     numInARow = 1;
     var i = x - 1;
     var j = y - 1;
     while (i >=0 && j>=0) {
       if(squareLocation(i, j) === color) {
           numInARow++;
           i--;
           j--;
       } else {
         break;
       }
     }
     if (numInARow === 4) {
       alert(color + " wins.")
     }

     i = x + 1;
     j = y + 1;
     while (i <=6 && j<=5) {
       if(squareLocation(i, j) === color) {
           numInARow++;
           i++;
           j++;
       } else {
         break;
       }
     }
     if (numInARow === 4) {
       alert(color + " wins.")
     }

    // alert(numInARow);
// Diagonal bottom left to top right
    var i = x - 1;
    var j = y + 1;
    while (i >=0 && j<=5) {
      if(squareLocation(i, j) === color) {
          numInARow++;
          i--;
          j++;
      } else {
        break;
      }
    }

    if (numInARow === 4) {
      alert(color + " wins.")
    }

    i = x + 1;
    j = y - 1;
    while (i <=6 && j>=0) {
      if(squareLocation(i, j) === color) {
          numInARow++;
          i++;
          j--;
      } else {
        break;
      }
    }

    if (numInARow === 4) {
      alert(color + " wins.")
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

var squareLocation = function(x,y){
  var column = $('#column-' + x);
  var square = column.children('#square-' + y);
  var color = '';
  if(square.hasClass('red')) {
    color =  "red";
  } else if (square.hasClass('black')) {
    color =  'black';
  }
  return color;
}

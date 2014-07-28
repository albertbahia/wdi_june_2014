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
    checkColumns();
    checkRows();
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


function checkColumns() {
  var redArray = [];
  var blackArray = [];
  for (var i = 0; i < 8; i++) {
    var columnChildren = $('#column-' + i).children();
    redArray = [];
    blackArray = [];
      for (var r = 0; r < 7; r++ ) {
        if (columnChildren.eq(r).attr('class') === 'circle red') {
          redArray.push(r);
          blackArray = [];
        } else if (columnChildren.eq(r).attr('class')  === 'circle black') {
          blackArray.push(r);
          redArray = [];
        }
      }
    if (redArray.length === 4) {
      alert('red wins!')
    } else if (blackArray.length === 4) {
      alert('black wins!')
    } else {
      console.log('no one wins')
    }
  };
};


var checkRows = function() {
  var redArray = [];
  var blackArray = [];

  for (var r = 0; r < 6; r++) {
    var colIndex = r;
    var startCol = $('.circle').eq(colIndex);
    for (var c = 0; c < 7; c++ ) {
      if (startCol.attr('class') === 'circle red') {
        redArray.push(c);
        blackArray = [];
        startCol = $('.circle').eq(colIndex + 6);
      } else if (startCol.attr('class') === 'circle black') {
        var colIndex = startCol.index();
        blackArray.push(c);
        redArray = [];
        startCol = $('.circle').eq(colIndex + 6);
      } else {
        blackArray = [];
        redArray = [];
      }
      if (redArray.length === 4) {
        alert('red wins!')
      } else if (blackArray.length === 4) {
        alert('black wins!')
      } else {
        console.log('no one wins')
      }
    }

  };
};


var checkDiags = function() {

};

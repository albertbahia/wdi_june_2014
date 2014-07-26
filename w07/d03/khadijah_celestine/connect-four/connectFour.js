$(function() {
  console.log('Khadijah');
  startGame();
});

function startGame() {
  var columns = $('.column');
  var COUNTER = 6;
  var turn = true;
                /*col*/
  var gameBoard = [ /* 0    1     2     3     4      5    6
   /* 0 row */  ['a', 'c', null, null, null, null, null],
   /* 1 row */  ['b', null, null, null, null, null, null],
   /* 2 row */  ['d', null, null, null, null, null, null],
   /* 3 row */  ['e', null, null, null, null, null, null],
   /* 4 row */  ['f', null, null, null, null, null, null],
   /* 5 row */  ['g', null, null, null, null, null, null],
   /* 6 row */  [   5,    5,    5,    5,    5,    5,   5]
    ];
  
  columns.on('click', function() { 
    column = $(this);
    columnId = column.attr('id');
    if (gameBoard[COUNTER][columnId] < 0) {
      console.log('no more plays');
    } else {
      if(turn) {
        console.log('red');
        playPiece(gameBoard, columnId, 'red');

      } else { 
        console.log('black');
        playPiece(gameBoard, columnId, 'black');
      }
      turn = !turn;
    }
  });
}

// checks if this piece is a winner in the gameBoard array
// using its row and columns
var checkWin = function(row, column) {
  
};

//                        board,   4   , red
var playPiece = function(board, column, color) {
    var index = board[6][column];
    idOfPiece = getId([index,column]);
    piece = $('#' + idOfPiece); 
    piece.addClass(color);
    board[index][column] = color;
    board[6][column]--;
};

var toggle = function() {
  if ($(this).hasClass('red')) {
    $(this).removeClass('red');
    $(this).addClass('black');
  } else {
    $(this).removeClass('black');
    $(this).addClass('red');
  } 
};

var getId = function(arr) {
  var locationRow = arr[0];
  var locationCol = arr[1];
  return locationCol * 6 + locationRow;
};
var getCoordinates = function(id) {
  var locationRow = parseInt(id / 6);
  var locationCol = id - locationRow * 6;
  return [locationRow, locationCol];
};

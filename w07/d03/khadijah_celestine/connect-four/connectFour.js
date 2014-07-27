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
       turn = playPiece(gameBoard, columnId, turn);
    }
  });
}

var checkWin = function(gameBoard, row, col) {
  var win = false;
  // check horizontal left win
  col=(+col)
  if ( col + 3 < 7 ) { // only if we're in col 0, 1, 2 or 3
      if (gameBoard[row][col] === gameBoard[row][col+3] &&
          gameBoard[row][col] === gameBoard[row][col+2] && 
          gameBoard[row][col] === gameBoard[row][col+1]) {
        console.log('yes all');
        id = getId([row,col])
        piece = $('#' + id);
        color = piece.hasClass('red') ? 'red' : 'black';
        console.log(color + ' wins the game. ');
      }
  } else {
    console.log('too far out');
  }
  if ( col
  return win;
};


//                        board,   4   , red
var playPiece = function(board, column, turn) {
    var color = turn ? 'red' : 'black'
    var row = board[6][column];
    var idOfPiece = getId([row,column]);
    var piece = $('#' + idOfPiece); 
    piece.addClass(color);
    board[row][column] = color;

    isWinner = checkWin(board, row, column);





    board[6][column]--;
    return !turn;
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

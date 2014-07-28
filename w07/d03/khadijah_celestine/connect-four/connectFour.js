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
  col=(+col)
  winCheckFunctions = [checkHorizontalLeft, checkHorizontalRight, checkVerticalDown]; 
  for( var i = 0; i < winCheckFunctions.length; i++) {
    var win = winCheckFunctions[i](gameBoard, row, col)
    if (win) {
      return win;
    }
  } 
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
    console.log('isWinner: ' + isWinner);

    board[6][column]--;
    return !turn;
};

var checkDiagonalNE = function(gameBoard, row, col) {

};

var checkDiagonalNW = function(gameBoard, row, col) {

};

var checkDiagonalSE = function(gameBoard, row, col) {

};

var checkDiagonalSW = function(gameBoard, row, col) {

};

var checkVerticalUp = function(gameBoard, row, col) {

};

var checkVerticalDown = function(gameBoard, row, col) {

};

var checkHorizontalRight = function(gameBoard, row, col) {
 if ( col - 3 > -1 ) { // only if we're in col 4, 5 or 6
   if (gameBoard[row][col] === gameBoard[row][col-3] &&
       gameBoard[row][col] === gameBoard[row][col-2] && 
       gameBoard[row][col] === gameBoard[row][col-1]) {
         console.log('yes right');
         id = getId([row,col])
         piece = $('#' + id);
         color = piece.hasClass('red') ? 'red' : 'black';
         console.log(color + ' wins the game. ');
         return color;
    }
  }
 return false;
};

var checkHorizontalLeft = function(gameBoard, row, col) {
 if ( col + 3 < 7 ) { // only if we're in col 0, 1, 2 or 3
   if (gameBoard[row][col] === gameBoard[row][col+3] &&
       gameBoard[row][col] === gameBoard[row][col+2] && 
       gameBoard[row][col] === gameBoard[row][col+1]) {
         console.log('yes all');
         id = getId([row,col])
         piece = $('#' + id);
         color = piece.hasClass('red') ? 'red' : 'black';
         console.log(color + ' wins the game. ');
         return color;
    }
  }
 return false;
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

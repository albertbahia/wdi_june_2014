$(function() {
  console.log('Khadijah');
  startGame();
});

function startGame() {
  var gamePieces = $('.piece');
  var columns = $('.column');
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
    col = $(this);
    colId = col.attr('id');
    if (gameBoard[6][colId] < 0) {
      console.log('no more plays');
    } else {
      if(turn) {
        console.log('red');
        playPiece(gameBoard, colId, 'red');

      } else { 
        console.log('black');
        playPiece(gameBoard, colId, 'black');
      }
      turn = !turn;
    }
  });
}


//                        board,   4   , red
var playPiece = function(board, column, color) {
    var index = board[6][column];
    console.log('index: ' + index);
    console.log('piece to change' + board[index][column]);
    console.log('id: ' + getId([index,column]));
    idOfPiece = getId([index,column]);
    piece = $('#' + idOfPiece); 
    console.log(piece);
    piece.addClass(color);
    board[index][column] = color;
    console.log('should be ' + color + ':' + board[index][column]);
    console.log('whats in the counter column ' + board[6][column]);
    board[6][column]--;
    console.log('whats in the counter column now: ' + board[6][column]);
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

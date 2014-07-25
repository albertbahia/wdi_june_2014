$(function() {
  console.log('Khadijah');
  startGame();
});

function startGame() {
  var gamePieces = $('.piece');
  var columns = $('.column');
  var turn = true;
  gameBoard = [ /* 0    1     2     3     4      5
   /* 0 row */  ['a', 'c', null, null, null, null],
   /* 1 row */  ['b', null, null, null, null, null],
   /* 2 row */  [null, null, null, null, null, null],
   /* 3 row */  [null, null, null, null, null, null],
   /* 4 row */  [null, null, null, null, null, null],
   /* 5 row */  [null, null, null, null, null, null],
   /* 6 row */  [null, null, null, null, null, null],
   /* 7 row */  [   7,    7,    7,    7,    7,    7]
    ];
  
  columns.on('click', function() { 
  col = $(this);
  colId = col.attr('id');
  // console.log(colId);
  if(turn) {
    console.log('red');
    playPiece(gameBoard, colId, 'red');
  } else { 
    console.log('black');
    playPiece(gameBoard, colId, 'black');
  }
  turn = !turn;
  });

  gamePieces.on('click', function() { 
  });
}

//                  board,   4   , red
var play = function(board, column, color) {
  index = board[column][8];
  board[column][index] = color;
  board[column][8]--;
};

var playPiece = function(board, column, color) {
  console.log('colid' + column, color);
  index = board[column][6];
  console.log(index)
  board[column][index] = color;
  board[column][6]--;
  console.log('PP');
  console.log('col: ' + column + 'row: ' + index);
  console.log('PP');
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

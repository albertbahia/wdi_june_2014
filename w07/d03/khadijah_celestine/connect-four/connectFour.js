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
 
// for on click function write two functions
// one that will take in a column and check if there are any more plays
// and one that will take in a boolean and then call playPiece on the right color
//                                                    and return new value of turn
// this way I could refractor my onClick function to a one liner something like this
// anyPlaysLeft(columnId) ? console.log('no plays') : playPiece(gameBoard, columnId, turn)

  columns.on('click', function() { 
    column = $(this);
    columnId = column.attr('id');
     if (gameBoard[COUNTER][columnId] < 0) {
       console.log('no more plays');
     } else {
       turn = playPiece(gameBoard, columnId, turn);
    }

   // anyPlaysLeft(gameBoard, columnId, COUNTER) ? console.log('no plays') : turn = playPiece(gameBoard, columnId, turn);
  });
}

// checks if this piece is a winner in the gameBoard array
// using its row and columns
var checkWin = function(row, column) {
  
};


//                        board,   4   , red
var playPiece = function(board, column, turn) {
    var color = turn ? 'red' : 'black'
    var index = board[6][column];
    idOfPiece = getId([index,column]);
    piece = $('#' + idOfPiece); 
    piece.addClass(color);
    board[index][column] = color;
    board[6][column]--;
    return !turn;
};
// true if some plays left
var anyPlaysLeft = function(gameBoard, columnId, counter) {
  console.log('col ' + columnId);
  console.log('should be 6: ' + counter);
  console.log(gameBoard[counter][columnId]);
  console.log(gameBoard[counter][columnId] > 0);
  return gameBoard[counter][columnId] > 0;
};

// seems unnessacary to use array here but I like it
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

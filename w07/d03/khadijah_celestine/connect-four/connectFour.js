$(function() {
  console.log('Khadijah');
  startGame();
});

function startGame() {
  var gamePieces = $('.piece');
  var columns = $('.column');
  var turn = true;
  board = [
    [null, null, null, null, null, null, null, null, 7],
    [null, null, null, null, null, null, null, null, 7],
    [null, null, null, null, null, null, null, null, 7],
    [null, null, null, null, null, null, null, null, 7],
    [null, null, null, null, null, null, null, null, 7],
    [null, null, null, null, null, null, null, null, 7]
    ];
  
  columns.on('click', function() { 
    console.log('clicked it.');
    col = $(this);
    id = col.attr('id');
    console.log('COLUMN');
    console.log(id);
    piecesInCol = col.children('.piece');
    console.log(piecesInCol);
    console.log(piecesInCol[0]);
    for (var i = piecesInCol.length; i >= 0; i--) {
      console.log(piecesInCol.eq(i).attr('id'));
      console.log(piecesInCol.eq(i).hasClass('black') || piecesInCol.eq(i).hasClass('red') );
    }
  });

  gamePieces.on('click', function() { 
    if($(this).hasClass('red') || $(this).hasClass('black') ) {
    } else {
       piece = $(this);
       col = piece.parent();
       loc = parseInt(piece.attr('id'));

       console.log(loc + ' ' + getCoordinates(loc));
     if(turn) {
       $(this).removeClass('red');
       $(this).addClass('black');
     } else {
       $(this).removeClass('black');
       $(this).addClass('red');
     }
    turn = !turn;
    }
  });


}
//                  board,   4   , red
var play = function(board, column, color) {
  index = board[column][8];
  board[column][index] = color;
  board[column][8]--;
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

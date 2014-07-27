$(function() {
  console.log('Loaded, bro');
  startGame();

});


function startGame() {

  $('.piece').click(makePlay);
}

var currentPlayer = 'red';
var gameOver = false;

// changes the piece color of only the bottom most element in the
// connect four column
function makePlay() {
  if (gameOver) {
    return undefined;
  }

  var currentPiece = $(this);
  var pieces = currentPiece.parent().children();

  // checking if piece has no color class from the end of my array
  // so that I may check for the bottom most elements first
  for (var i = pieces.length - 1; i > -1; i--) {
    if (!pieces.eq(i).hasClass('black') && !pieces.eq(i).hasClass('red')) {

      pieces.eq(i).addClass(currentPlayer);
      toggleTurn();

      checkAndDisplayWinner(currentPiece);
      break;
    }
  }
}


function toggleTurn() {
  if (currentPlayer === 'red') {
    currentPlayer = 'black';
  } else {
    currentPlayer = 'red';
  }
}


function checkCol(piece) {
  var colPieces = piece.parent().children();

  var newColumn = convertPiecesToSimpleArray(colPieces);
  var winner = checkSimpleArrayWinner(newColumn);

  return winner;
}


function checkRow(piece) {
  var rowNum = piece.attr('class').split(' ')[1];
  var rowPieces = $('.column .' + rowNum);

  var newRow = convertPiecesToSimpleArray(rowPieces);
  var winner = checkSimpleArrayWinner(newRow);

  return winner
}


function checkDiagLeftRight(piece) {
  var columnIndex = parseInt(piece.parent().attr('class').split(' ')[1]);
  var rowIndex = parseInt(piece.attr('class').split(' ')[1]);

  var rowStart = rowIndex - columnIndex;

  var columns = $('.column');
  var pieces = $();

  // creates array of piece elements from the left to right cross
  for (var i = 0; i < columns.length; i++) {
    var diagPiece = columns.eq(i).children().eq(rowStart);
    if (rowStart >= 0 && diagPiece != undefined) {
      pieces = pieces.add(diagPiece);
    }
    rowStart++
  }

  var newDiag = convertPiecesToSimpleArray(pieces);
  var winner = checkSimpleArrayWinner(newDiag);

  return winner;

}

function checkDiagRightLeft(piece) {
  var columnIndex = parseInt(piece.parent().attr('class').split(' ')[1]);
  var rowIndex = parseInt(piece.attr('class').split(' ')[1]);

  var rowEnd = (rowIndex - (7 - columnIndex)) - 1;

  var columns = $('.column');
  var pieces = $();


  // creates array of piece elements from the right to left cross
  for (var i = columns.length - 1; i >= 0; i--) {
    var diagPiece = columns.eq(i).children().eq(rowEnd);
    if (rowEnd >= 0 && diagPiece != undefined) {
      pieces = pieces.add(diagPiece);
    }

    rowEnd++;
  }

  var newDiag = convertPiecesToSimpleArray(pieces);
  var winner = checkSimpleArrayWinner(newDiag);

  return winner;
}




function convertPiecesToSimpleArray(jArray) {
  var newArray = []

  for (var i = 0; i < jArray.length; i++) {
    if (jArray.eq(i).hasClass('red')) {
      newArray.push('r');
    } else if (jArray.eq(i).hasClass('black')) {
      newArray.push('b');
    } else {
      newArray.push('n');
    }
  }

  return newArray;
}

function checkSimpleArrayWinner(array) {
  var winner = 'n';

  for (var i = 0; i < 4; i++) {
    if (array[i] === array[i + 1] &&
        array[i] === array[i + 2] &&
        array[i] === array[i + 3]) {

      if (array[i]) {
        winner = array[i];
      }
    }
  }

  return winner;
}

function checkAndDisplayWinner(piece) {
  var colWinner = checkCol(piece);
  var rowWinner = checkRow(piece);
  var diagLeftRightWinner = checkDiagLeftRight(piece);
  var diagRightLeftWinner = checkDiagRightLeft(piece);
  var winner = 'n';

  if (colWinner !== 'n') {
    winner = colWinner;
  } else if (rowWinner !== 'n') {
    winner = rowWinner;
  } else if (diagLeftRightWinner !== 'n') {
    winner = diagLeftRightWinner;
  } else if (diagRightLeftWinner !== 'n') {
    winner = diagRightLeftWinner;
  }

  if (winner === 'r' && !$('h2').hasClass('winner'))   {
    $('<h2 class="winner">').text('RED Wins...Fatality').appendTo('#gameboard-container');
    gameOver = true;
  } else if (winner === 'b' && !$('h2').hasClass('winner')) {
    $('<h2 class="winner">').text('Black Wins...Flawless Victory').appendTo('#gameboard-container')
    gameOver = true;
  }
}

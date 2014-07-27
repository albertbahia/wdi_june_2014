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
      if ($(this).get(0) === pieces.get(i)) {
        $(this).addClass(currentPlayer);
        toggleTurn();
      }

      checkCol(currentPiece);
      checkRow(currentPiece);
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


function checkDiag(piece) {
  piece.parent()
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

  for (var i = 0; i < 3; i++) {
    if (array[i] === array[i + 1] &&
        array[i] === array[i + 2] &&
        array[i] === array[i + 3]) {

      winner = array[i];
    }
  }

  return winner;
}

$(function() {
  console.log('Loaded, bro');

  startGame();
});


function startGame() {
  $('.piece').click(makePlay);
}


var currentPlayer = 'red';
var gameOver = false;


function makePlay() {

  // stops the game if gameOver true
  if (gameOver) {
    return undefined;
  }

  var pieces = $(this).parent().children();

  // moves backward through array of pieces that are in a column and changes
  // the color of the first piece that doesn't have a color class
  for (var i = pieces.length - 1; i > -1; i--) {
    if (!pieces.eq(i).hasClass('black') && !pieces.eq(i).hasClass('red')) {

      pieces.eq(i).addClass(currentPlayer);
      toggleTurn();

      checkAndDisplayWinner(pieces.eq(i));
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


// checkCol, checkRow, and the two checkDiag functions each go through three steps.
// Step 1: the pieces for the row, column or left/right diagonal are grouped together in order.
// Step 2: the array of pieces (jQuery objects) is converted to a simple array of 'r', 'b', and 'n' values
// Step 3: the array is checked for 4 of the same consecutive letters.


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
  // step 1 in the three step process
  var columnIndex = parseInt(piece.parent().attr('class').split(' ')[1]);
  var rowIndex = parseInt(piece.attr('class').split(' ')[1]);

  // get the theoretical starting row of the diagonal at the first column
  // (also adjusts for the fact that rows start at 0 in array form)
  var rowStart = rowIndex - columnIndex;

  var columns = $('.column');

  // empty jquery element that will be filled with pieces
  var pieces = $();

  // loop through columns and and rows at the same time to grab diagonals
  for (var i = 0; i < columns.length; i++) {
    var diagPiece = columns.eq(i).children().eq(rowStart);
    if (rowStart >= 0 && diagPiece != undefined) {
      pieces = pieces.add(diagPiece);
    }
    rowStart++
  }
  // end of step 1 -------------

  var newDiag = convertPiecesToSimpleArray(pieces);
  var winner = checkSimpleArrayWinner(newDiag);

  return winner;

}

function checkDiagRightLeft(piece) {
  // step 1 of the 3 step process
  var columnIndex = parseInt(piece.parent().attr('class').split(' ')[1]);
  var rowIndex = parseInt(piece.attr('class').split(' ')[1]);

  // get the theoretical ending row of the diagonal at the last column.
  // (adjusted for array starting at 0)
  var rowEnd = (rowIndex - (7 - columnIndex)) - 1;

  var columns = $('.column');
  var pieces = $();

  // loop through columns and arrays simultaneously
  for (var i = columns.length - 1; i >= 0; i--) {
    var diagPiece = columns.eq(i).children().eq(rowEnd);
    if (rowEnd >= 0 && diagPiece != undefined) {
      pieces = pieces.add(diagPiece);
    }

    rowEnd++;
  }
  // end of step 1 -------------------

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
  // check each line for winner
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

  // create heading to display winner based on winner
  if (winner === 'r' && !$('h2').hasClass('winner'))   {
    $('<h2 class="winner">').text('RED Wins...Fatality').appendTo('#gameboard-container');
    gameOver = true;
  } else if (winner === 'b' && !$('h2').hasClass('winner')) {
    $('<h2 class="winner">').text('Black Wins...Flawless Victory').appendTo('#gameboard-container')
    gameOver = true;
  }
}

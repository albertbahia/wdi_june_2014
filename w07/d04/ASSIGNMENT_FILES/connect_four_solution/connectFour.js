$(function() {
  console.log('Loaded, bro');
  game();
})


function game() {
  var gamePieces = $('.piece');
  var turn = 0;
  
  gamePieces.click(function() {
    var pieceToPlay = findPiece(parseInt(this.id));
    if (pieceToPlay) {
      var nextPiece = pieceToPlay.attr('id') - 7;

      if (turn % 2 === 0){
        pieceToPlay.toggleClass('red')
                   .toggleClass('playable');
        turn += 1;
        setNext(nextPiece);
        checkWinner();
      } else if (turn % 2 === 1) {
        pieceToPlay.toggleClass('black')
                   .toggleClass('playable');
        turn += 1;
        setNext(nextPiece);
        checkWinner();
      }
    }
  });

  var restartButton = $('#restart');
  restartButton.click(function() {
    turn = 0;
    gamePieces.removeClass('red')
              .removeClass('black')
              .removeClass('playable');
    for (var i = 41; i > 34; i--) {
      gamePieces.eq(i).addClass('playable');
    }
  })
}

// Make gamePiece above last played playable
function setNext(index) {
  if (index >= 0 ){
    $('#'+ index).toggleClass('playable');
  }
}

// checks all winning combinations
function checkWinner() {
  checkAcross();
  checkDown();
  checkDiagonalForward();
  checkDiagonalBackward();
}

// checks horizontally for a winner
function checkAcross(){
  var gamePieces = $.map($('.piece'), function(piece) {
    return piece.className;
  });

  for (var i = 0; i <= gamePieces.length - 7; i += 7) {
    var firstSet = $.unique([gamePieces[0 + i], gamePieces[1 + i], gamePieces[2 + i], gamePieces[3 + i]]);
    var secondSet = $.unique([gamePieces[1 + i], gamePieces[2 + i], gamePieces[3 + i], gamePieces[4 + i]]);
    var thirdSet = $.unique([gamePieces[2 + i], gamePieces[3 + i], gamePieces[4 + i], gamePieces[5 + i]]);
    var fourthSet = $.unique([gamePieces[3 + i], gamePieces[4 + i], gamePieces[5 + i], gamePieces[6 + i]]);
    if (firstSet.length === 1 && (/red|black/).test(firstSet[0])) {
      whichPlayer(firstSet);
    } else if (secondSet.length === 1 && (/red|black/).test(secondSet[0])) {
      whichPlayer(secondSet);
    } else if (thirdSet.length === 1 && (/red|black/).test(thirdSet[0])) {
      whichPlayer(thirdSet);
    } else if (fourthSet.length === 1 && (/red|black/).test(fourthSet[0])){
      whichPlayer(fourthSet);
    }
  }
}

// checks vertically for a winner
function checkDown() {
  var gamePieces = $.map($('.piece'),function(piece) {
    return piece.className;
  });
  for (var i = 0; i < 7; i++) {
    var firstSet = $.unique([gamePieces[0 + i], gamePieces[7 + i], gamePieces[14 + i], gamePieces[21 + i]]);
    var secondSet = $.unique([gamePieces[7 + i], gamePieces[14 + i], gamePieces[21+ i], gamePieces[28 + i]]);
    var thirdSet = $.unique([gamePieces[14 + i], gamePieces[21 + i], gamePieces[28 + i], gamePieces[35 + i]]);
    if (firstSet.length === 1 && (/red|black/).test(firstSet[0])) {
      whichPlayer(firstSet);
    } else if (secondSet.length === 1 && (/red|black/).test(secondSet[0])) {
      whichPlayer(secondSet);
    } else if (thirdSet.length === 1 && (/red|black/).test(thirdSet[0])) {
      whichPlayer(thirdSet);
    }
  }
}

// checks diagonally from the left side for a winner
function checkDiagonalForward() {
  var gamePieces = $.map($('.piece'), function(piece){
    return piece.className;
  });
  for (var i = 0; i < 4; i++) {
    var firstSet = $.unique([gamePieces[0 + i], gamePieces[8 + i], gamePieces[16 + i], gamePieces[24 + i]]);
    var secondSet = $.unique([gamePieces[7 + i], gamePieces[15 + i], gamePieces[23+ i], gamePieces[31 + i]]);
    var thirdSet = $.unique([gamePieces[14 + i], gamePieces[22 + i], gamePieces[30 + i], gamePieces[38 + i]]);
    if (firstSet.length === 1 && (/red|black/).test(firstSet[0])) {
      whichPlayer(firstSet);
    } else if (secondSet.length === 1 && (/red|black/).test(secondSet[0])) {
      whichPlayer(secondSet);
    } else if (thirdSet.length === 1 && (/red|black/).test(thirdSet[0])) {
      whichPlayer(thirdSet);
    }
  }
}
// checks diagonally from the right side for a winner
function checkDiagonalBackward() {
  var gamePieces = $.map($('.piece'), function(piece){
    return piece.className;
  });
  for (var i = -3; i < 1; i++) {
    var firstSet = $.unique([gamePieces[6 + i], gamePieces[12 + i], gamePieces[18 + i], gamePieces[24 + i]]);
    var secondSet = $.unique([gamePieces[13 + i], gamePieces[19 + i], gamePieces[25+ i], gamePieces[31 + i]]);
    var thirdSet = $.unique([gamePieces[20 + i], gamePieces[26 + i], gamePieces[32 + i], gamePieces[38 + i]]);
    if (firstSet.length === 1 && (/red|black/).test(firstSet[0])) {
      whichPlayer(firstSet);
    } else if (secondSet.length === 1 && (/red|black/).test(secondSet[0])) {
      whichPlayer(secondSet);
    } else if (thirdSet.length === 1 && (/red|black/).test(thirdSet[0])) {
      whichPlayer(thirdSet);
    }
  }
}

// determine which player has one and restart the game
function whichPlayer(set) {
  if (set[0] === 'piece red') {
    alert('Red Wins!');
    $('#restart').click();
  } else if (set[0] === 'piece black') {
    alert('Black Wins!');
    $('#restart').click();
  }
}

function findPiece(clickedID){
  clickedID %= 7;
  for (var i = 0; i < 6; i++) {
    if ($('#' + clickedID).hasClass('playable')) {
      return $('#' + clickedID)
    } else {
      clickedID += 7;
    }
  }
  return null;
}
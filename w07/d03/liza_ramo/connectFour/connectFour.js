  var turn = 0;

$(function() {
  console.log('Loaded, bro');
  startGame();
});

function startGame() {
  var gamePieces = $('.piece');

  gamePieces.mouseenter(function(){
    $(this).addClass('hover')
  });
  gamePieces.mouseleave(function(){
    $(this).removeClass('hover')
  });

  // puts a listener on every element with the class .piece
  $('.piece').on('click', makeMove);
}

function makeMove() {
  var piece = $(this);
  var siblingBelow = piece.next();

  if (piece.hasClass('piece 1')) {
    if (!piece.hasClass('red') && !piece.hasClass('black')) {
      if (turn % 2 === 0) {
        piece.addClass('red');
        turn += 1;
      } else {
        piece.addClass('black');
        turn += 1;
      }
    }
  }
  else {
      if (piece.hasClass('red') || piece.hasClass('black')) {
        alert("This spot's taken");
      } else {
          if (siblingBelow.hasClass('red') || siblingBelow.hasClass('black')) {
            if (turn % 2 === 0) {
              piece.addClass('red');
              turn += 1;
            } else {
              piece.addClass('black');
              turn += 1;
            }
          }
      }
  }

  winnerCols(piece);
  winnerRows(piece);
  // winnerDiags(piece);

}

function winnerCols(piece) {
  // console.log(piece);
  // var winColor = piece.attr('class')
  var colArray = piece.parent().children();
  var colColorArray = [];

  for (var i = 0; i < colArray.length; i++) {
    if (colArray.eq(i).hasClass('red')) {
      colColorArray.push('r');
    } else if (colArray.eq(i).hasClass('black')) {
        colColorArray.push('b');
    } else {
        colColorArray.push('n');
    }
  }
  // console.log(colColorArray);

  var countRed = 0;
  var countNull = 0;
  var countBlack = 0;

  // for loop: loop through colColorArray for the 1st i that isn't "n"
    // starting from that i, check if i + 1 is the same color
    // repeat until i <= 6

  for (var i = 0; i < 6 ; i++) {
    if (!(colColorArray[i] === "n")) {
      if (colColorArray[i] === colColorArray[i + 1] &&
          colColorArray[i] === colColorArray[i + 2] &&
          colColorArray[i] === colColorArray[i + 3]) {
            if (colColorArray[i] === "r") {
            alert("Column winner is: red");
          } else {
              alert("Column winner is: black");
          }
      }
    }
  }

}

function winnerRows(piece) {
  var rowNum = piece.attr('class').split(' ')[1];
  var rowArray = $('.piece.' + rowNum);
  var rowColorArray = []
  console.log(rowArray);

  // convert rowArray from JQ to simple array
  for (var i = 0; i < rowArray.length; i++) {
    if (rowArray.eq(i).hasClass('red')) {
      rowColorArray.push('r');
    } else if (rowArray.eq(i).hasClass('black')) {
        rowColorArray.push('b');
    } else {
        rowColorArray.push('n');
    }
  }
  // console.log(rowColorArray);

  // then check if 3 consecutive elements in the rowColorArray are the samesies:
  var countRed = 0;
  var countNull = 0;
  var countBlack = 0;

  // for loop: loop through rowColorArray for the 1st i that isn't "n"
    // starting from that i, check if (i + 1) is the same color
    // repeat until i <= 6

  for (var i = 0; i < 6 ; i++) {
    if (!(rowColorArray[i] === "n")) {
      if (rowColorArray[i] === rowColorArray[i + 1] &&
          rowColorArray[i] === rowColorArray[i + 2] &&
          rowColorArray[i] === rowColorArray[i + 3]) {
            if (rowColorArray[i] === "r") {
            alert("Row winner is: red");
          } else {
              alert("Row winner is: black");
          }
      }
    }
  }

}

// function winnerDiags(piece) {
//
// }














//

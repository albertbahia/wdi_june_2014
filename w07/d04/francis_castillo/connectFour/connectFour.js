var colorArr = ["red"];

var num = 1;

$(function() {
  console.log('Loaded, bro');
  startGame();
  // event listeners
});

function startGame () {
  var piecesArr = $('#gameboard-container div');
  var columns = [ '', 'colOne', 'colTwo', 'colThree', 'colFour', 'colFive', 'colSix', 'colSeven'];
  var rows = [ '', 'rowOne', 'rowTwo', 'rowThree', 'rowFour', 'rowFive', 'rowSix', 'rowSeven'];
  colorArr = ["red"];
  // enumerating to create indexed board and add playable/not-playable pieces
  piecesArr.each(
    function(index) {
      var idx = index + 1;
      // resets board to start state
      $(this).addClass((idx)
        .toString())
        .removeClass("red")
        .removeClass("black")
        .removeClass("played")
        .removeClass("playable");

      if (num % 7 === 0 && idx < 36) {
        $(this).attr("id", columns[num]);
        $(this).addClass("not-playable")
        num = 1;
      } else if (idx > 35) {
        $(this).attr("id", columns[num]);
        $(this).addClass("playable");
        num+=1;
      } else {
        $(this).attr("id", columns[num]);
        $(this).addClass("not-playable");
        num+=1;
      }

      if (idx >= 1 && idx >= 1 && idx < 8) {
        $(this).addClass(rows[1]);
      } else if (idx >= 8 && idx < 15) {
        $(this).addClass(rows[2]);
      } else if (idx >= 15 && idx < 22){
        $(this).addClass(rows[3]);
      } else if (idx >= 22 && idx < 29){
        $(this).addClass(rows[4]);
      } else if (idx >= 29 && idx < 36){
        $(this).addClass(rows[5]);
      } else if (idx >= 36 && idx < 43){
        $(this).addClass(rows[6]);
      }
    }
  );

  $('.pieces').click(playPiece);
  $('.button').click(startGame);
  $('#gameboard-container h2')
    .text("");
}

var addColorClass = function(piece,color) {
  piece.addClass(color);
  piece.removeClass('playable')
    .addClass('played');
}

var playPiece = function() {
  var piece = $(this);
  var red = "red";
  var black = "black";
  var colorIndex = (colorArr.length - 1);
  var lastSibling = $('#' + piece.attr('id') +
    '.not-playable').last();
  var playablePiece = $('#' + piece.attr('id') + '.playable');
  // changes colors and class of the 2 bottom most pieces!
  if (piece.hasClass("red") || piece.hasClass("black")) {
  } else {
    if (colorArr[colorIndex] === "red" ) {
      addColorClass(playablePiece, colorArr[colorIndex]);
      lastSibling.removeClass("not-playable")
        .addClass('playable');
      colorArr.push(black);
    } else if ( colorArr[colorIndex] === "black" ) {
      addColorClass(playablePiece, colorArr[colorIndex]);
      lastSibling.removeClass("not-playable")
        .addClass('playable');
      colorArr.push(red);
    }
  }
  checkWinner(piece, playablePiece);
};

var checkWinner = function(piece, playablePiece) {

  var colId = $('#'+ piece.attr('id') + "." +
    colorArr[colorArr.length - 2]);
  var col = colId.filter(
    function(v){ return typeof v ==='number'; }).length;

  var rowId = $('.' + playablePiece.attr('class').split(" ")[2] +
    '.played' + "." + colorArr[colorArr.length - 2]);
  var row = rowId.filter(
    function(v){ return typeof v ==='number'; }).length;
  console.log(rowId);
  console.log(colId);

  if (col > 3) {
    checkWinnerColumnRow(colId, 7);
  } else if (row > 3) {
    checkWinnerColumnRow(rowId, 1);
  }

};

var makeWinnersArr = function(piecesArr) {
  var winsArr = [];
  $.each(piecesArr, function(index) {
      winsArr.push(parseInt(piecesArr.eq(index)
        .attr('class')
        .split(" ")[1], 10));
  });
  return winsArr.reverse();
};

var checkWinnerColumnRow = function(piecesArr, diffNum) {
  var winsArr = makeWinnersArr(piecesArr);

  if ( (winsArr[0] - winsArr[1]) === diffNum && (winsArr[2] - winsArr[3])
    === diffNum && (winsArr[1] - winsArr[2]) === diffNum) {

    returnWinner();
  }

};

// var checkWinnerRow = function(piecesArr) {
//   var winsArr = makeWinnersArr(piecesArr);
//
//   if ( (winsArr[0] - winsArr[1]) === 1 && (winsArr[2] - winsArr[3])
//      === 1 && (winsArr[1] - winsArr[2]) === 1) {
//
//     returnWinner();
//   }
//
// };

var checkWinnerDiagonally = function() {


};

var returnWinner = function() {
  $('.pieces').click(playPiece).off()
  $('<h2>').appendTo('#gameboard-container')
    .text(colorArr[colorArr.length - 2] + " wins!");
}

var connectFourBoard = [
  [  1,  2,  3,  4,  5,  6,  7 ],
  [  8,  9, 10, 11, 12, 13, 14 ],
  [ 15, 16, 17, 18, 19, 20, 21 ],
  [ 22, 23, 24, 25, 26, 27, 28 ],
  [ 29, 30, 31, 32, 33, 34, 35 ],
  [ 36, 37, 38, 39, 40, 41, 42 ]
];

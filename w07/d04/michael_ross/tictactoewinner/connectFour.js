var colorArr = ["red"];
var num = 1;

$(function() {
  console.log('Loaded, bro');

  startGame();
  // event listeners
  $('.pieces').click(playPiece);
  $('.button').click(startGame);

});

function startGame () {
  // var colorArr = ["red"];
  var piecesArr = $('#gameboard-container div');
  var columns = [ '', 'one', 'two', 'three', 'four', 'five', 'six', 'seven']
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
    }
  );
}

var addColorClass = function(piece,color) {
  piece.addClass(color);
  piece.removeClass('playable')
    .addClass('played');
};

var playPiece = function() {
  var piece = $(this);
  var red = "red";
  var black = "black";
  var lastSibling = $('#' + piece.attr('id') + '.not-playable').last();
  var colorIndex = (colorArr.length - 1);
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
  checkWinnerColumn(piece);
};

var checkWinner = function() {

};

var checkWinnerColumn = function(piece) {
  var id = $('#' + piece.attr('id') + "." + colorArr[colorArr.length - 2]);
  var col = id.filter(
    function(v){ return typeof v === 'number';}).length
  if (colorArr.length > 7 && col > 3) {
    columnCal(id)
  } else {

    }

};

var columnCal = function(id) {
  var winnersArr = [];
  $.each(id, function(index) {

      winnersArr.push(parseInt(id.eq(index)
      .attr('class')
      .split(' ')[1], 10));
    });
      winnersArr.reverse();
      console.log(winnersArr);
      for (var i = 1; i < winnersArr.length; i++) {
        if ((winnersArr[i - 1]) - winnersArr[i] === 7 ) {
          if ( i === (winnersArr.length - 1)) {
            winnersArr[i - 1] = 'w';
            winnersArr[i] = 'w';
          } else {
            winnersArr[i - 1] = 'w';
          }
        }
      }
    console.log(winnersArr)
};

var rowCal = function(id) {
  var winnersArr = [];
  $.each(id, function(index) {
    winnersArr.push(parseInt(id.eq(index)
    .attr('class')
    .split(' ')[1], 10));
  });
    winnersArr.reverse();
    console.log(winnersArr);
    for (var i = 1; i< winnersArr.length; i++) {
      if ((winnersArr[i - 1]) - winnersArr[i] === 1) {
        if (i === (winnersArr.length -1)) {
          winnersArr[i -1] = 'w';
          winnersArr[i] = 'w';
        } else {
          winnersArr[i - 1] = 'w';
        }
      }
    }
    console.log(winnersArr)
}

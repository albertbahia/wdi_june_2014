var colorArr = ["red"];
var num = 1;

$(function() {
  console.log('Loaded, bro');
  startGame();
  $('.pieces').click(playPiece);
  $('.button').click(startGame);

});

function startGame (arguments) {
  var piecesArr = $('#gameboard-container div');
  var columns = [ '', 'one', 'two', 'three', 'four', 'five', 'six', 'seven']
  colorArr = ["red"];

  piecesArr.each(
    function(index) {
      var idx = index + 1;
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
}

var playPiece = function() {
  var piece = $(this);
  var red = "red";
  var black = "black";
  var lastSibling = $('#' + piece.attr('id') + '.not-playable').last();
  var colorIndex = (colorArr.length - 1);
  var playablePiece = $('#' + piece.attr('id') + '.playable');

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
};

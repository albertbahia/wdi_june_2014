var colorArr = ["red"];
var num = 1;

$(function() {
  console.log('Loaded, bro');
  startGame();
  addClass();
  $('.pieces').click(playPiece);
  $('.button').click(addClass);

});

function startGame() {

}

function addClass (arguments) {
  var piecesArr = $('#gameboard-container div');
  var columns = [ '', 'one', 'two', 'three', 'four', 'five', 'six', 'seven']
  colorArr = ["red"];
  piecesArr.each(
    function(index) {
      var idx = index + 1;
      $(this).addClass((idx).toString())
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

var changeColorTo = function(piece,color) {
  piece.addClass(color);
  piece.removeClass('playable').addClass('played');
}

var playPiece = function() {
  var piece = $(this);
  var red = "red";
  var black = "black";
  var id = '#' + piece.attr('id') + '.not-playable';
  var index = (colorArr.length - 1);
  var playablePiece = '#' + piece.attr('id') + '.playable';

  if (piece.hasClass("red") || piece.hasClass("black")) {
    console.log("choose another piece");
  } else {
    if (colorArr[index] === "red" ) {
      changeColorTo($(playablePiece), colorArr[index]);
      $(id).last().removeClass("not-playable").addClass('playable');
      colorArr.push(black);
    } else if ( colorArr[index] === "black" ) {
      changeColorTo($(playablePiece), colorArr[index]);
      $(id).last().removeClass("not-playable").addClass('playable');
      colorArr.push(red);
    }
  }
};

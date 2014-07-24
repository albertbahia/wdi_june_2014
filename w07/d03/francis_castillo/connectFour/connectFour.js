var colorArr = ["red"];
var num = 1;
$(function() {
  console.log('Loaded, bro');
  startGame();
  addClass();
  $('.pieces').click(toggleColor);

});

function startGame() {

}

function addClass (arguments) {
  var piecesArr = $('#gameboard-container div');
  var columns = [ '', 'one', 'two', 'three', 'four', 'five', 'six', 'seven']

  piecesArr.each(
    function(index) {
      var idx = index + 1;
      $(this).addClass((idx).toString());

      if (num % 7 === 0 && idx < 36) {
        $(this).attr("id", columns[num]);
        $(this).addClass("not-playable");
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
}


var toggleColor = function() {
  var piece = $(this);
  var red = "red";
  var black = "black";
  var id = '#' + piece.attr('id') + '.not-playable';
  var index = (colorArr.length - 1);

  if (piece.hasClass("red") || piece.hasClass("black")) {
    console.log("choose another piece");
  } else {
    if (colorArr[index] === "red"  && piece.hasClass("playable")) {
      changeColorTo(piece, colorArr[index]);
      $(id).last().removeClass("not-playable").addClass('playable');

      colorArr.push(black);
    } else if ( colorArr[index] === "black"  && piece.hasClass("playable") ) {
      changeColorTo(piece, colorArr[index]);
      $(id).last().removeClass("not-playable").addClass('playable');
      colorArr.push(red);
    }
  }

};

// var bottomMost = function() {
//   $(this).
// }

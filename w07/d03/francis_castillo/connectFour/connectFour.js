$(function() {
  console.log('Loaded, bro');
  startGame();
  addClass();
  $('.pieces').click(changeToRed);

});

function startGame() {

}

function addClass (arguments) {
  var piecesArr = $('#gameboard-container div');
  var columns = ['one', 'two', 'three', 'four', 'five', 'six', 'seven']

  piecesArr.each(
    function(index) {
      $(this).addClass((index + 1).toString());

      if (index < 7) {
        $(this).addClass(columns[0]);
      } else if (index < 14 && index > 6) {
        $(this).addClass(columns[1]);
      } else if (index < 21 && index > 13) {
        $(this).addClass(columns[2]);
      } else if (index < 28 && index > 20) {
        $(this).addClass(columns[3]);
      } else if (index < 35 && index > 27) {
        $(this).addClass(columns[4]);
      } else if (index < 42 && index > 34) {
        $(this).addClass(columns[5]);
      }

    }
  );
}

var changeToRed = function() {
  $(this).addClass("red");
}

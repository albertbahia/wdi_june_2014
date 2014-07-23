$(function() {
  console.log('Loaded, bro');
  startGame();

  // $('.piece').click(turnRed);

  (function () {
  var count = 0;

  $('.piece').click(function () {
  	var piece = $(this);
    count += 1;

    if (count % 2 === 0) {
      piece.addClass('red');
    }else {
    	piece.addClass('black');
    }
  });
})();

//the closing brackets
});


function startGame() {
  var gamePieces = $('.piece');
  // gamePieces.mouseenter(function(){
  //   $(this).addClass('hover')
  // });
  // gamePieces.mouseleave(function(){
  //   $(this).removeClass('hover')
  // });
}



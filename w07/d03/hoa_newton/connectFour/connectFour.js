$(function() {
  console.log('Loaded, bro');
  startGame();

  $('.piece').click(turnColor);
});

var turnColor = function(){
	console.log('Turn color Damn it!');
	var piece = $(this);

	if (piece.hasClass('red')){
		piece.removeClass('red');
		piece.addClass('black');
	} else if (piece.hasClass('black')){
		piece.removeClass('black');
		piece.addClass('red');
	} else{
	piece.addClass('red');
	}
}

function startGame() {
  var gamePieces = $('.piece');
  // gamePieces.mouseenter(function(){
  //   $(this).addClass('hover')
  // });
  // gamePieces.mouseleave(function(){
  //   $(this).removeClass('hover')
  // });
}
$(function() {
  console.log('Loaded, bro');
  $('#reload').on('click', startGame);

  startGame();
});


function startGame() {
  var gamePieces = $('.piece');
  gamePieces.removeClass('red');
  gamePieces.removeClass('black');
  colorToggle = 'red'
  limitToBottom();

  // $('.bottom-piece').on('click', markPiece);
  $('.piece').on('click', markPiece);

};

var limitToBottom = function() {
	var gameColumns = $('.piece').parent();
	console.log(gameColumns);
	// for (pieceDiv in gameColumns) {
	// 	pieceDiv.addClass('bottom-piece')
	// }
	// console.log(gamePieces);
}

var markPiece = function(){
  	var piece = $(this);
  	// var piecesInClickedColumn = $(this).parent().children();
  	// var piece = piecesInClickedColumn.eq(5);
  	// console.log(piece);


  	piece.toggleColor = function() {
  		if (colorToggle === 'red') {
      		colorToggle = 'black';
    	} else if (colorToggle === 'black') {
      		colorToggle = 'red';
    	} else {
    		alert('hleP')
    	}
  	};

	if (piece.hasClass('red')) {
		console.log("already red");
	} else if (piece.hasClass('black')) {
		console.log("already black");  
	} else {
		if (colorToggle == 'red') {
			piece.addClass('red');
			piece.toggleColor();
			console.log(colorToggle);
		} else if (colorToggle == 'black') {
			piece.addClass('black');
			piece.toggleColor();
			console.log(colorToggle);
		} else {
			console.log(colorToggle);
			console.log(piece.attr('class'));
		}
	}
};
































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

  $('.bottom-piece').on('click', markPiece);
  // $('.piece').on('click', markPiece);

};

function limitToBottom() {
	var gameColumns = $('.column');
	console.log(gameColumns);

	for (var i = 0; i < gameColumns.length; i++) {
		gameColumns.eq(i).children().eq(5).addClass('bottom-piece');
	}
}

function markPiece(){
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
































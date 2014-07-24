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
  
  $('.piece').on('click', markPiece);
};


function markPiece(){
	console.log(this);
  	var clickedPiece = $(this);
  	
  	clickedPiece.findNext = function() {
  	 	var markedPieceTest = $(this).parent().children('.red', '.black');
  		var nextPiece = 0;
  		if (markedPieceTest.length) {
  			console.log(markedPieceTest.length);
  			nextPiece = markedPieceTest.last().prev();
  			return nextPiece;
  		} else {
  			nextPiece = $(this).parent().children().eq(5);
  			return nextPiece;
  		}
  	};

  	var piece = clickedPiece.findNext();  // bottommost unmarked piece

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
































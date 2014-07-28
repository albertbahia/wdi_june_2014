$(function() {
  console.log('Loaded, bro');
  $('#reload').on('click', startGame);

  startGame();
});


function startGame() {
  var gamePieces = $('.piece');
  gamePieces.removeClass('red');
  gamePieces.removeClass('black');
  turn = 0;
  
  $('.piece').on('click', markPiece);
};


function markPiece(){
	console.log(this);
  	var clickedPiece = $(this);
  	
  	
  	clickedPiece.findNext = function() {
  	 	var markedPieceTest = $(this).parent().children('.marked');
  		var nextPiece = 0;
  		if (markedPieceTest.length) {
  			console.log("marked pieces in column: " + markedPieceTest.length);
  			nextPiece = markedPieceTest.first().prev();
  			return nextPiece;
  		} else {
  			nextPiece = $(this).parent().children().eq(5);
  			return nextPiece;
  		}
  	};

  	var piece = clickedPiece.findNext();  

	if (piece.hasClass('marked')) {
		console.log("already marked");
	} else {
		if (turn % 2 === 0) {
			piece.toggleClass('red').toggleClass('marked');
			turn++;
			console.log("turns played: " + turn);
		} else if (turn % 2 === 1) {
			piece.toggleClass('black').toggleClass('marked');
			turn++;
			console.log("turns played: " + turn);
		}
	}

	piece.testForWin = function() {
		var win = 0; // should get set to 'red' or 'black'

		function winHorizontal() {

		}

		function winVertical() {
			
		}

		function winDiagonalForward() {
			
		}

		function windiagonalBackwards() {
			
		}
	}

	var win = piece.testForWin();

	if (win) {
		if (win === 'red') {
			alert('red wins')
		} else if (win === 'black') {
			alert('black wins')
		}
	};
		
};
































$(function() {
  console.log('Loaded, bro');
  $('#reload').on('click', startGame);

  startGame();
});


function startGame() {
  var gamePieces = $('.piece');
  colorToggle = 'red'

  $('.piece').on('click', markPiece);

};

var markPiece = function(){
  	var piece = $(this);

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

// - If it is set to red and clicked again it will not change color 
// - If it is set to black and clicked again it will not change color
// - An invalid click (on a colored piece) should not affect the order of the color of the next valid click. (i.e. if I am supposed to play red, and i click on a red, then next valid click should turn that gamepiece red, not black)































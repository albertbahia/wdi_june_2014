$(function() {
  console.log('Loaded, bro');
  startGame();
  $('h2').click(clearBoard);

  (function () {

  	count = 1;

		$('.piece').click(function() {
	  	var thisPiece = $(this);

	  	//column
	  	var column = thisPiece.parent();

	  	// select all pieces without color
	  	var blankPieces = column.children(":not(.filled)");

	  	// select the last uncolored child of column
	  	var lastPiece = blankPieces.last();
	    
	    if( !thisPiece.hasClass('red') && !thisPiece.hasClass('black')){
		    if (count % 2 != 0) {	
		      lastPiece.addClass('red filled'); 
		    }else {
		    	lastPiece.addClass('black filled');
		    }
		    count += 1;
		   } 
	  });

	})();  // Functions closing brackets

//the closing brackets
});

// Clear board
var clearBoard = function(){
	$('.piece').removeClass('red black filled');
	count = 1;
};

function startGame() {
  var gamePieces = $('.piece');
  // gamePieces.mouseenter(function(){
  //   $(this).addClass('hover')
  // });
  // gamePieces.mouseleave(function(){
  //   $(this).removeClass('hover')
  // });
}













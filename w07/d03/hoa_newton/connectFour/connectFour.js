$(function() {
  console.log('Loaded, bro');
  startGame();

  // $('.piece').click(turnRed);

  (function () {
  	var count = 0;

	  $('.piece').click(function () {
	  	var piece = $(this);
	    count += 1;

	    if( !piece.hasClass('red') && !piece.hasClass('black')){
		    if (count % 2 != 0) {	
		      piece.addClass('red'); 
		    }else {
		    	piece.addClass('black');
		    }
		   } 
	  });
	})();  // Functions closing brackets

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



$(function() {
  console.log('Loaded, bro');
  startGame();

  (function () {
  	var count = 0;

	  $('.piece').click(function () {
	  	var piece = $(this);
	    
	    if( !piece.hasClass('red') && !piece.hasClass('black')){
		    if (count % 2 != 0) {	
		      piece.addClass('red'); 
		    }else {
		    	piece.addClass('black');
		    }
		    count += 1;
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



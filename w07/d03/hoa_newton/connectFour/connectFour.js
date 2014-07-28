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
		    checkWinHorizontal();
		    checkWinVertical();
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

function checkWinHorizontal() {
  var column = $('.column');
  var checkWin = []; 		// class name strings

  //loop through 7 columns
  for (var i = 0; i < 7; i++) {    
  	//push all classname strings of each column, first row into checkWin array
    var piecesOfCol = column.eq(i).children();

    // for (var i = 0; i < 6; i++){
    	var rowsClass = piecesOfCol.eq(0); 
    // }
    var rowsClassNames = rowsClass.attr('class');
    checkWin.push(rowsClassNames); 
  }
  for (var i = 0; i < 4; i++) {
  	if (checkWin[i] === 'piece red filled' || checkWin[i] === 'piece black filled'){
  		if (checkWin[i] === checkWin[i+1] && checkWin[i+1] === checkWin[i+2] && checkWin[i+2] === checkWin[i+3]) {
      	$('<h3>').text(checkWin[i] + ' wins!').appendTo('body');
      	clearBoard();
    	}
  	}  
  }
};

function checkWinVertical(){
	// var column = $('.column');
 //  var checkWin = []; 

  var begin = 0;
  var column = $('.column');

  var setOfFourPieces = column.children().eq(0).slice(begin, 4);
  for (var i = 0; i < 4; i++){
  	if ( setOfFourPieces.eq(0).attr('class') === setOfFourPieces.eq(1).attr('class') 
  		&& setOfFourPieces.eq(1).attr('class') === setOfFourPieces.eq(2).attr('class')
  		&& setOfFourPieces.eq(2).attr('class') === setOfFourPieces.eq(3).attr('class')){
  		$('<h3>').text(checkWin[i] + ' wins!').appendTo('body');
      	clearBoard();
  	}
  }
}
  // for (var i = 0; i < 3; i++){
  // 	if ()
  // }











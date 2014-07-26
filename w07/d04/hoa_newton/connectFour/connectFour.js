$(function() {
  console.log('Loaded, bro');
  startGame();
  $('h2').click(clearBoard);

  (function () {
  	count = 1;
		$('.piece').click(function() {
	  	var thisPiece = $(this);
	  	var column = thisPiece.parent();    //column
      var thisPieceRow = thisPiece.attr('id');
	  	var blankPieces = column.children(":not(.filled)");   // select all pieces without color
	  	var lastPiece = blankPieces.last();       // select the last uncolored child of column
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
	  });  // closing if statement

	})();  // Functions closing brackets
});   //the closing brackets

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
  var checkWin = []; 		           // class name strings
  for (var i = 0; i < 7; i++) {    //loop through 7 columns
    var piecesOfCol = column.eq(i).children();   //push all classname strings of each column, first row into checkWin array
    var row = piecesOfCol.eq(0); 
    var rowsClassNames = row.attr('class');
    checkWin.push(rowsClassNames); 
  }
  for (var i = 0; i < 4; i++) {
  	if (checkWin[i] === 'piece red filled' || checkWin[i] === 'piece black filled'){
  		if (checkWin[i] === checkWin[i+1] && checkWin[i+1] === checkWin[i+2] && checkWin[i+2] === checkWin[i+3]) {
      	$('<h3>').text(checkWin[i] + ' wins!').appendTo('body');
        $('.piece').addClass('filled');
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
 
// function checkWinHorizontal() {
//   var redPieces = [];
//   var blackPieces = [];

//   $('.piece').each(function() {
//     if ($(this).hasClass('red')) {
//       redPieces.push($(this));
//     } else if ($(this).hasClass('black')) {
//       blackPieces.push($(this));
//     }
//   });

//   redPieces.
 
// }

// function checkWinHorizontal() {
//   var column = thisPiece.parent();
//   var allPieces = $('.piece');
  
//     for (var index = 0; index < 4; index++){
//       if (allPieces.eq(index).attr('class') === allPieces.eq(index+1).attr('class') 
//         && allPieces.eq(index+1).attr('class') === allPieces.eq(index+2).attr('class')
//         && allPieces.eq(index+2).attr('class') === allPieces.eq(index+3).attr('class')){
//           $('<h3>').text('Someone Wins!').appendTo('body');
//         }
//     }  
  
// }










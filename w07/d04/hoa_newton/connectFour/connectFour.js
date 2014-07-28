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
        checkWinHorizontalAllRows();
		    checkWinVertical();
        checkWinDiagonal();
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

/////////// CHECK WIN HORIZONTAL ////////////////////
function checkWinHorizontalAllRows() {    // check win for all rows
  var offset = 7;                         // check win every set of 7 elements
  for (var i = 0; i < 6; i++) {
    checkWinByRow(i * offset);      // check win all 6 rows
    // console.log("checking row starting with cell " + i*offset)
  }
}

function checkWinByRow(startCell) {
  var column = $('.column');
  var checkWin = []; 		           // class name strings

  // populate checkWin with current class names of all pieces
  for (var j = 0; j < 6; j++ ) {     // loop through 6 rows to get all the cells
    for (var i = 0; i < 7; i++) {    //loop through 7 columns to get 1 row
      var piecesOfCol = column.eq(i).children();   
      var cell = piecesOfCol.eq(j);   // loop through all cells, one cell at a time to get classes of each 
      var cellsClassNames = cell.attr('class');
      checkWin.push(cellsClassNames);      //push all classname strings of each column, first row into checkWin array
    }
  } 
  // search the checkWin array for matching 4 in a 7 piece horizontal group 
  for (var i = startCell; i < startCell+4; i++) {   //check one set of 4 cells for winning possibility
  	if (checkWin[i] === 'piece red filled' || checkWin[i] === 'piece black filled'){
  		if (checkWin[i] === checkWin[i+1] && checkWin[i+1] === checkWin[i+2] && checkWin[i+2] === checkWin[i+3]) {
        winMessage(cell);
    	}
  	}  
  }
};

////////// CHECK WIN VERTICAL ////////////////////
function checkWinVertical(){
	var columns = $('.column');

  for (var j = 0; j < 7; j++){                  //loop through 7 columns
    var col = columns.eq(j);
    var piecesOfCol = col.children();

    for (var i = 0; i < 3; i++){
      if (piecesOfCol.eq(i).hasClass('red') || piecesOfCol.eq(i).hasClass('black')){
        if (piecesOfCol.eq(i).attr('class') === piecesOfCol.eq(i+1).attr('class') &&
        piecesOfCol.eq(i+1).attr('class') === piecesOfCol.eq(i+2).attr('class') &&
        piecesOfCol.eq(i+2).attr('class') === piecesOfCol.eq(i+3).attr('class')){
        winMessage(piecesOfCol.eq(i));
        }
      } 
    }
  }
}
 
function checkWinDiagonal(){
  var pieces = $('.piece');

  // check win left to right down
  for (var i = 0; i < 21; i++){
    if (pieces.eq(i).hasClass('red') || pieces.eq(i).hasClass('black')){
      if ( pieces.eq(i).attr('class') === pieces.eq(i + 7).attr('class') &&
      pieces.eq(i + 7).attr('class') === pieces.eq(i + 14).attr('class') &&
      pieces.eq(i + 14).attr('class') === pieces.eq(i + 21).attr('class')){
        winMessage(pieces.eq(i));
      }
    }
    
  }

  // Check win left to right up
  for (var i = 3; i <= 23; i++){
    if (pieces.eq(i).hasClass('red') || pieces.eq(i).hasClass('black')){
      if ( pieces.eq(i).attr('class') === pieces.eq(i + 5).attr('class') &&
      pieces.eq(i + 5).attr('class') === pieces.eq(i + 10).attr('class') &&
      pieces.eq(i + 10).attr('class') === pieces.eq(i + 15).attr('class')){
        winMessage(pieces.eq(i));
      }
    }
    
  }
}

function winMessage(element){
  if (element.hasClass('red')){
    $('<h3>').text('GAME OVER! Red wins! ').appendTo('body');
    $('.piece').addClass('filled');
  }else if (element.hasClass('black')){
    $('<h3>').text('GAME OVER! Black wins!').appendTo('body');
    $('.piece').addClass('filled');
  }
        
}






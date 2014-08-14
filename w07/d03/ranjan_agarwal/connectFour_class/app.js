$(function() {
  console.log('Loaded bro.');
	gameStatus = false;
	var turn = 0;

		// A semi transparent div that is placed right on
		// top of a circle through css
		var highlight = $('<div>').addClass('highlight');

		$('.circle').click(function() {
			piece = $(this);
			pieceToPlay = lowestPiece(piece.parent());
			if (isPlayable(piece) && pieceToPlay) {
				// Append the red or black class
				// depending on whether turn is odd or even
				if (turn % 2 === 0) {
					pieceToPlay.addClass('red').addClass('taken');
				} else {
					pieceToPlay.addClass('black').addClass('taken');
				};

				turn++;

				// UI - move the highlight up
				if (isPlayable(piece)) {
					highlight.appendTo(pieceToPlay.prev());
				};
			};
			checkForWin(piece);
		});

		// ---------------------
		// This is just cool UI stuff.
		// Not necessary for solution.
		$('.circle').mouseenter(function() {
			var lastPiece = lowestPiece($(this).parent());
			if (isPlayable($(this))) {
				highlight.appendTo(lastPiece);
			} else {
				highlight.remove();
			}
		});

		$('.circle').mouseleave(function() {
			highlight.remove();
		});
		// ---------------------

	// Accepts a piece
	// Returns true if piece is vacant
	// Returns false if piece is filled
	var isPlayable = function(piece) {
		return !(piece.hasClass('red') || piece.hasClass('black'));
	};

	// Accepts a column
	// Returns the lowest playable piece in the same column
	var lowestPiece = function(column) {
		var columnPieces = column.children();
		for (var i = columnPieces.length - 1; i >= 0; i--) {
			if (isPlayable(columnPieces.eq(i))) {
				return columnPieces.eq(i);
			};
		};
		return false;
	};

	function checkForWin(piece) {
		// has class taken
    var takenPiece = piece.attr('class');
		// console.log(takenPiece);

		// either has red or black
    var color = takenPiece.split(' ')[1];
		// console.log(color);

    //checks for vertical win
    if (piece.next().hasClass(takenPiece)) {
      var secondPiece = piece.next();
      if (secondPiece.next().hasClass(takenPiece)) {
        var thirdPiece = secondPiece.next();
        if (thirdPiece.next().hasClass(takenPiece)) {
          win(color);
        };
      };
    };

    //checks for horizontal win
    var pieceIndex = piece.parent().children().index(piece);

    var oneRight = piece.parent().next().children().eq(pieceIndex);
    var twoRight = piece.parent().next().next().children().eq(pieceIndex);
    var threeRight = piece.parent().next().next().next().children().eq(pieceIndex);

    var oneLeft = piece.parent().prev().children().eq(pieceIndex);
    var twoLeft = piece.parent().prev().prev().children().eq(pieceIndex);
    var threeLeft = piece.parent().prev().prev().prev().children().eq(pieceIndex);

    if (oneRight.hasClass(takenPiece) && twoRight.hasClass(takenPiece) && threeRight.hasClass(takenPiece)) {
      win(color);
    };
    if (oneRight.hasClass(takenPiece) && twoRight.hasClass(takenPiece) && oneLeft.hasClass(takenPiece)) {
      win(color);
    };
    if (oneRight.hasClass(takenPiece) && oneLeft.hasClass(takenPiece) && twoLeft.hasClass(takenPiece)) {
      win(color);
    };
		if (oneLeft.hasClass(takenPiece) && twoLeft.hasClass(takenPiece) && threeLeft.hasClass(takenPiece)) {
      win(color);
    };

    //checks for diagonal win
		var oneRightOneDown = piece.parent().next().children().eq(pieceIndex + 1);
		var twoRightTwoDown = piece.parent().next().next().children().eq(pieceIndex + 2);
		var threeRightThreeDown = piece.parent().next().next().next().children().eq(pieceIndex + 3);

		var oneLeftOneUp = piece.parent().prev().children().eq(pieceIndex - 1);
		var twoLeftTwoUp = piece.parent().prev().prev().children().eq(pieceIndex - 2);
		var threeLeftThreeUp = piece.parent().prev().prev().prev().children().eq(pieceIndex - 3);

		var oneLeftOneDown = piece.parent().prev().children().eq(pieceIndex + 1);
		var twoLeftTwoDown = piece.parent().prev().prev().children().eq(pieceIndex + 2);
		var threeLeftThreeDown = piece.parent().prev().prev().prev().children().eq(pieceIndex + 3);

		var oneRightOneUp = piece.parent().next().children().eq(pieceIndex - 1);
		var twoRightTwoUp = piece.parent().next().next().children().eq(pieceIndex - 2);
		var threeRightThreeUp = piece.parent().next().next().next().children().eq(pieceIndex - 3);

    if (oneRightOneDown.hasClass(takenPiece) && twoRightTwoDown.hasClass(takenPiece) && threeRightThreeDown.hasClass(takenPiece)) {
      win(color);
    };
    if (oneRightOneDown.hasClass(takenPiece) && twoRightTwoDown.hasClass(takenPiece) && oneLeftOneUp.hasClass(takenPiece)) {
      win(color);
    };
    if ( oneRightOneDown.hasClass(takenPiece) && oneLeftOneUp.hasClass(takenPiece) && twoLeftTwoUp.hasClass(takenPiece)) {
      win(color);
    };
    if (oneLeftOneUp.hasClass(takenPiece) && twoLeftTwoUp.hasClass(takenPiece) && threeLeftThreeUp.hasClass(takenPiece)) {
      win(color);
    };
    if (oneLeftOneDown.hasClass(takenPiece) && twoLeftTwoDown.hasClass(takenPiece) && threeLeftThreeDown.hasClass(takenPiece)) {
      win(color);
    };
    if (oneRightOneUp.hasClass(takenPiece) && oneLeftOneDown.hasClass(takenPiece) && twoLeftTwoDown.hasClass(takenPiece)) {
      win(color);
    };
    if (oneRightOneUp.hasClass(takenPiece) && twoRightTwoUp.hasClass(takenPiece) && oneLeftOneDown.hasClass(takenPiece)) {
      win(color);
    };
    if (oneRightOneUp.hasClass(takenPiece) && twoRightTwoUp.hasClass(takenPiece) && threeRightThreeUp.hasClass(takenPiece)) {
      win(color);
    };
	}

	function restartGame() {
	  var circles = $('.circle');
	  for (var i = 0; i < circles.length; i++) {
	    circles.removeClass('red').removeClass('black');
	  };
	}

	function win(color) {
		gameStatus = true;
		alert(color + ' WINNN');
    restartGame();
	}

});

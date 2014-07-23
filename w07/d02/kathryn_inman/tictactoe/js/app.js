$(function() {
	console.log("JS LOADED");
	game = new TicTacToe;
	displayGame(game);

});


function displayGame(game) {
	// find board
	var board = $('#board');
	// clear board
	board.empty();

	for (var row = 0; row < 3; row++) {
		// appending each row
		var rowE1 = $('<div>').addClass('row').appendTo(board);
		for (var col = 0; col < 3; col++) {
			// appending each square
			var squareE1 = $('<div>').addClass('square').appendTo(rowE1);
			if (game.board[row][col]) {
				squareE1.text(game.board[row][col]);
				if (squareE1.text() == 'X') {
					squareE1.addClass('xMarked');
				} else if (squareE1.text() == 'O') {
					squareE1.addClass('oMarked');
				}
			}
		}
	}
}



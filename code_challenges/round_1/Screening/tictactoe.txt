// tic-tac-toe

board = [["X","X","O"], 
		 ["O","O","X"], 
		 ["O","X","O"]];
answer = tictactoe(board);
console.log(answer);

function tictactoe(board) {
	s = board[0].join('') + board[1].join('') + board[2].join(''); // rows
	s += board[0][0] + board[1][0] + board[2][0] + board[0][1] + board[1][1] + board[2][1] + board[0][2] + board[1][2] + board[2][2] // cols
	s += board[0][0] + board[1][1] + board[2][2] + board[2][0] + board[1][1] + board[0][2]; // diagonals
	for (var i = 0; i < 24; i += 3) {
		var sub = s.substring(i, i + 3);
		if (sub === "XXX") return "X Wins!"
		if (sub === "OOO") return "O Wins!"
	}
	return "Cat's Game."
}

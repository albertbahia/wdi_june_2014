function makeObj() {
	return {}; 
}

function ticTacToe() { 
	this.currentPlayer = "X"; 
	this.board = [[null, null, null],
								[null, null, null],
								[null, null, null]];
	this.play = function(player, x, y){
		if (this.board[y][x] == null && player == currentPlayer) {
			this.board[y][x] = player;
				if (this.currentPlayer == "X") {
					this.currentPlayer = "O";
				} else {
					this.currentPlayer = "X";
				};  
		} else {
			console.log("Try again!")
		};
	}; 
	this.checkWin = function(){
		
	};
}

myGame = new ticTacToe();
myGame.play("X", 2, 2); 
console.log(myGame); 

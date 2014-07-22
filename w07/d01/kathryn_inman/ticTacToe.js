function TicTacToe() {
	this.currentPlayer = "X";
	this.board = [ [null, null, null],
                   [null, null, null],
                   [null, null, null]];


    this.toggleCurrent = function() {
    	if (this.currentPlayer = "X") {
    		this.currentPlayer = "O"; 
    	} else {
    		this.currentPlayer = "X";
    	}
    }

    this.play = function(player, row, column) {
    	if (this.board[row][column] == null) {
    	   	this.board[row][column] = player;
    	   	this.toggleCurrent
    	   	return true;
        } else {
        	return false;
        }
    }

    this.checkRows = function() {
    	for (var indexOfRow = 0; indexOfRow < this.board.length; indexOfRow++) {
    		var firstSpot = this.board[indexOfRow][0] 
    		var secondSpot = this.board[indexOfRow][1] 
    		var thirdSpot = this.board[indexOfRow][2] 
    		var filled = null
    		if (firstSpot && secondSpot && thirdSpot) {
    			filled = true;
    			if (firstSpot == "X" && secondSpot == "X" && thirdSpot == "X") {
    				return "X";
    			} else if (firstSpot == "O" && secondSpot == "O" && thirdSpot == "O") {
    				return "O";
    			} else {
    				return false;
    			}
    		} else {
    			return false;
    		}
    	}
    }

//     this.checkColumns = function() {
//     	for (var indexOfRow = 0; indexOfRow < this.board.length; indexOfRow++) {
//     		// for each subarray AKA row
//     		console.log(this.board[indexOfRow]);
//     		for (var indexOfSpot = 0; indexOfSpot < this.board[indexOfRow].length;indexOfSpot++) {
//     			// for each element in each subarray
//     			console.log(this.board[indexOfRow][indexOfSpot]);
//     			var playerXCounter = 0;	
//     			var playerOCounter = 0;	
//     		if (this.board[indexOfRow][indexOfSpot] == "X") {
//     			playerXCounter += 1;
//     			// console.log(playerXCounter);
//     		} else if (this.board[indexOfRow][indexOfSpot] == "O") {
//     			playerOCounter += 1;
//     			// console.log(playerOCounter);
//     		}
//     	}
//     }
//     	if (playerXCounter == 3) {
//     		return "X"; 
//     	} else if (playerOCounter == 3) {
//     		return "O";
//     	} else {
//     		return false;
//     	}
// }

this.checkColumns = function() {
		var playerXCounter = 0;	
    	var playerOCounter = 0;
    	for (var indexOfRow = 0; indexOfRow < this.board.length; indexOfRow++) {
    		// for each subarray AKA row
    		if 	(this.board[indexOfRow][0] == "X") {
    			playerXCounter += 1;
    			console.log(playerXCounter);
    		} else if (this.board[indexOfRow][0] == "0") {
    			playerOCounter += 1;
    			console.log(playerOCounter);
    		}
    	}
   
    	if (playerXCounter == 3) {
    		return "X"; 
    	} else if (playerOCounter == 3) {
    		return "O";
    	} else {
    		return false;
    	}
    }




    this.checkDiagonals = function() {

    }

}

var newGame = new TicTacToe();

// console.log(newGame);
// console.log(newGame.currentPlayer);
// console.log(newGame.board);

newGame.play("O", 0, 0);
newGame.play("O", 1, 0);
newGame.play("O", 2, 0);


// console.log(newGame.checkRows());


console.log(newGame);
console.log(newGame.checkColumns());
















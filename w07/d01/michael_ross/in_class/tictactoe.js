function TicTacToe() {
  this.currentPlayer = "X";
  this.board = [[null, null, null],
                [null, null, null],
                [null, null, null]];

  console.log(this.board);

  this.toggleCurrent = function() {
    if (this.currentPlayer == "X") {
      this.currentPlayer == "O"
    } else {
      this.currentPlayer == "X"
    }
  };

  this.play = function(player, x, y) {
    if (this.board[x][y] == null){
      this.board[x][y] = player;
    } else {
      console.log("Not a valid turn.")
    }
    console.log(this.board);
  };

  this.checkWin = function() {
    var winnerStringX = "";
    var winnerStringO = "";
    for (var indOne = 0; indOne < this.board.length; indOne++) {
      for (var indTwo = 0; indTwo < this.board[indOne].length; indTwo++) {
        if(this.board[indOne][indTwo] == "X"){

        winnerStringX += (String(indOne)+String(indTwo));

      } else if(this.board[indOne] == "O") {

        winnerStringO += (String(indOne)+String(indTwo));
      };
    };
  }

  if (winnerStringX === "000102" || "101112" || "202122" || "001020" || "011112" || "202122" || "001122" || "021120"){
    console.log("X is the winner!");
  } else if (winnerStringO === "000102" || "101112" || "202122" || "001020" || "011112" || "202122" || "001122" || "021120"){
    console.log("O is the winner!");
  } else {
    console.log("Keep Playing.");
    console.log(this.board);
  }

}
};

myGame = new TicTacToe();
myGame.play("X", 0, 0);
console.log(myGame.board);
myGame.play("0", 0, 1);
console.log(myGame.board);
myGame.play("X", 0, 1);
console.log(myGame.board);
myGame.play("0", 2, 2);
console.log(myGame.board);
myGame.play("X", 0, 2);
myGame.checkWin();

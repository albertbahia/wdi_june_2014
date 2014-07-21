function TicTacToe(currentPlayer, board) {
  this.currentPlayer = "X";
  this.board = [[null, null, null], [null, null, null], [null, null, null]];

  this.play = function(player, x, y) {
    if (this.board[x][y] === null) {
      this.board[x][y] = player;
    } else {
      return false;
    }
    return this.board;
  };

  this.checkWin = function() {
    if ((checkRows || checkColumns || checkDiagonals) === "X wins!") {
      return "X wins!";
    } else if ((checkRows || checkColumns || checkDiagonals) === "O wins!") {
      return "O wins!";
    } else {
      return "Keep playing!";
    }
  };

  var toggleCurrent = function() {
    if (currentPlayer === "O") {
      return currentPlayer === "X";
    } else {
      return currentPlayer === "O";
    }
  };

  var checkRows = function() {
    if ((this.board[0][0] && this.board[0][1] && this.board[0][2]) === "X") {
      return "X wins!";
    } else if ((this.board[1][0] && this.board[1][1] && this.board[1][2]) === "X") {
      return "X wins!";
    } else if ((this.board[2][0] && this.board[2][1] && this.board[2][2]) === "X") {
      return "X wins!";
    } else if ((this.board[0][0] && this.board[0][1] && this.board[0][2]) === "O") {
      return "O wins!";
    } else if ((this.board[1][0] && this.board[1][1] && this.board[1][2]) === "O") {
      return "O wins!";
    } else if ((this.board[2][0] && this.board[2][1] && this.board[2][2]) === "O") {
      return "O wins!";
    }
  };

  var checkColumns = function() {
    if ((this.board[0][0] && this.board[1][0] && this.board[2][0]) === "X") {
      return "X wins!";
    } else if ((this.board[0][1] && this.board[1][1] && this.board[2][1]) === "X") {
      return "X wins!";
    } else if ((this.board[0][2] && this.board[1][2] && this.board[2][2]) === "X") {
      return "X wins!";
    } else if ((this.board[0][0] && this.board[1][0] && this.board[2][0]) === "O") {
      return "O wins!";
    } else if ((this.board[0][1] && this.board[1][1] && this.board[2][1]) === "O") {
      return "O wins!";
    } else if ((this.board[0][2] && this.board[1][2] && this.board[2][2]) === "O") {
      return "O wins!";
    }
  };

  var checkDiagonals = function() {
    if ((this.board[0][0] && this.board[1][1] && this.board[2][2]) === "X") {
      return "X wins!";
    } else if ((this.board[0][2] && this.board[1][1] && this.board[2][0]) === "X") {
      return "X wins!";
    } else if ((this.board[0][2] && this.board[1][1] && this.board[2][0]) === "O") {
      return "O wins!";
    } else if ((this.board[0][0] && this.board[1][1] && this.board[2][2]) === "O") {
      return "O wins!";
    }
  };
}

myGame = new TicTacToe();
myGame.currentPlayer;
myGame.checkWin();

myGame.play("X", 1, 1);
myGame.play("O", 0, 0);
myGame.checkWin();

myGame.play("X", 1, 0);
myGame.play("O", 0, 1);
myGame.play("O", 2, 2); // returns false because not 'O's turn
myGame.checkWin();

myGame.play("X", 1, 2);
myGame.checkWin();

function TicTacToe() {
  this.currentPlayer = "X";
  this.board = [[null,null,null],
                [null,null,null],
                [null,null,null]];

  this.toggleCurrent = function() {
    if (this.currentPlayer === "X") {
      this.currentPlayer = "O";
    } else {
      this.currentPlayer = "X";
    }
  };

  this.play = function(player, i, j) {
    player = player.toUpperCase();
    if (player !== this.currentPlayer) {
      return false;
    }
    if (this.board[i][j] !== null) {
      return false;
    } else {
      this.board[i][j] = player;
      this.toggleCurrent();
      return true;
    }
  };

  this.checkWin = function() {
    var rowWinner = this.checkRows();
    var columnWinner = this.checkColumns();
    var diagonalWinner = this.checkDiagonals();
    if (rowWinner) {
      return rowWinner;
    } else if (columnWinner) {
      return columnWinner;
    } else if (diagonalWinner) {
      return diagonalWinner;
    } else {
      return false;
    }
  };

  this.checkRows = function() {
    for (var i = 0; i < 3; i++) {
      if (this.board[i][0] === this.board[i][1] && this.board[i][0] === this.board[i][2] && this.board[i][0]) {
        return this.board[i][0];
      }
    }
    return false;
  };

  this.checkColumns = function() {
    for (var i = 0; i < 3; i++) {
      if (this.board[0][i] === this.board[1][i] && this.board[0][i] === this.board[2][i] && this.board[0][i]) {
        return this.board[0][i];
      }
    }
    return false;
  };

  this.checkDiagonals = function() {
    var upperLeft = this.board[0][0];
    var upperRight = this.board[0][2];
    var center = this.board[1][1];
    var lowerLeft = this.board[2][0];
    var lowerRight = this.board[2][2];
    if (upperLeft === center && upperLeft === lowerRight) {
      return upperLeft;
    } else if (upperRight === center && upperRight === lowerLeft) {
      return upperRight;
    } else {
      return false;
    }
  };

}

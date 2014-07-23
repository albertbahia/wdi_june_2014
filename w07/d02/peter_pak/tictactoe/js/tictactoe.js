function TicTacToe() {
  this.currentPlayer = 'X';
  this.board = [[null, null, null], [null, null, null], [null, null, null]];
  this.play = function(player, x, y) {
    if (this.currentPlayer === player) {
      if (this.board[x][y] === null) {
        this.board[x][y] = player;
        this.toggleCurrent();
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  };
  this.toggleCurrent = function() {
    if (this.currentPlayer === 'X') {
      this.currentPlayer = 'O';
    } else {
        this.currentPlayer = 'X';
    }
  };
  this.checkRows = function() {
    for (var i = 0; i < this.board.length; i++) {
      var tempArray = [];
      for (var j = 0; j < this.board[i].length; j++) {
        if (this.board[i][j] === this.currentPlayer) {
          tempArray.push(this.board[i][j]);
        }
      }
    }
    if (tempArray.length === 3) {
      return true;
    }
    return false;
  };
  this.checkColumns = function() {
    if (this.board[0][0] === this.currentPlayer &&
      this.board[0][0] === this.board[1][0] &&
        this.board[1][0] === this.board[2][0]) {
          return true;
        } else if (this.board[0][1] === this.currentPlayer &&
                   this.board[0][1] === this.board[1][1] &&
                   this.board[1][1] === this.board[2][1]) {
          return true;
        } else if ( this.board[0][2] === this.currentPlayer &&
                    this.board[0][2] === this.board[1][2] &&
                     this.board[1][2] === this.board[2][2]) {
            return true;
    } else {
      return false;
    }
  };
  this.checkDiagonals = function() {
    if (this.board[0][0] === this.currentPlayer &&
        this.board[0][0] === this.board[1][1] &&
        this.board[1][1] === this.board[2][2]) {
          return true;
        } else if (this.board[2][0] === this.currentPlayer &&
                   this.board[2][0] === this.board[1][1] &&
                   this.board[1][1] === this.board[0][2]) {
          return true;
    } else {
      return false;
    }
  };

  this.checkWin = function() {
    this.toggleCurrent();
    if (this.checkRows() === true) {
        return ("Player " + this.currentPlayer + "Wins");
    } else if (this.checkColumns() === true) {
      return ("Player " + this.currentPlayer + "Wins");
    } else if(this.checkDiagonals() === true) {
        return ("Player " + this.currentPlayer + "Wins");
    } else {
      this.toggleCurrent();
      return ('no win');
    }
  };

}

// Write a TicTacToe constructor ('class') in JavaScript. Your constructor should make objects with the following:
//
// Properties
//
// currentPlayer - string, either "X" or "O" (starts as "X")
// board - 3x3 array, starts as all null e.g. [ [null, null, null], [null, null, null], [null, null, null]]
// Publicly-Used Methods These are the ones used to run the game
//
// play(player, x, y) - makes a play for player ("X" or "O") at the point specified on the grid. Updates board & current player. Returns true if play was valid, false if not.
// checkWin() - returns "X", "O", or false depending on whether or not someone has won.
// Privately used methods These are the ones used by other methods to help do the method's job
//
// toggleCurrent() - changes the value of currentPlayer to be the other player. Only used by other method(s) in your 'class'.
// checkRows(), checkColumns(), checkDiagonals(); - only used internally by checkWin
//
//





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



myGame = new TicTacToe();
myGame.currentPlayer;
myGame.checkWin();

myGame.play("X", 1, 1);
myGame.play("O", 2, 0);
myGame.checkWin();
myGame.board;

myGame.play("X", 0, 0);
myGame.play("O", 0, 1);
myGame.play("O", 2, 2); // returns false because not 'O's turn
myGame.board;
myGame.checkWin();

myGame.play("X", 2, 2);
myGame.board;
myGame.checkWin();

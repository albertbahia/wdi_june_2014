function TicTacToe() {
  this.currentPlayer = 'X';
  this.board = [[null, null, null],
                [null, null, null],
                [null, null, null]];

  this.toggleCurrent = function() {
    if (this.currentPlayer === 'X') {
      this.currentPlayer = 'O';
    } else {
      this.currentPlayer = 'X';
    }
  };

  this.checkRows = function() {

    for (row in this.board) {
      // var xspots = 0;
      // var ospots = 0;

      // for (index in this.board[row]) {
      //   if (this.board[row][index] === 'X') {
      //     xspots++;
      //   } else if (this.board[row][index] === 'O') {
      //     ospots++;
      //   }
      // }

      if (this.board[row][0] === this.board[row][1] && this.board[row][0] === this.board[row][2]) {
        return this.board[row][0];
      }

      // if (xspots === 3) {
      //   return 'X';
      // } else if (ospots === 3) {
      //   return 'O';
      // }
    }

    return false;
  };

  this.checkColumns = function() {

    for (var column = 0; column < this.board[0].length; column++) {
      // var xspots = 0;
      // var ospots = 0;
      //
      // for (var row = 0; row < this.board.length; row++) {
      //   if (this.board[row][column] === 'X') {
      //     xspots++;
      //   } else if (this.board[row][column] === 'O') {
      //     ospots++;
      //   }
      // }
      //
      // if (xspots === 3) {
      //   return 'X';
      // } else if (ospots === 3) {
      //   return 'O';
      // }

      if (this.board[0][column] === this.board[1][column] && this.board[0][column] === this.board[2][column]) {
        return this.board[0][column];
      }
    }

    return false;
  };

  this.checkDiagonals = function() {
    var xspots = 0;
    var ospots = 0;
    for (var row = 0; row < this.board.length; row++) {
      if (this.board[row][row] === 'X') {
        xspots++;
      } else if (this.board[row][row] === 'O') {
        ospots++;
      }
    }

    if (xspots === 3) {
      return 'X';
    } else if (ospots === 3) {
      return 'O';
    }

    var column = this.board.length - 1;
    xspots = 0;
    ospots = 0;
    for (var row = 0; row < this.board.length; row++) {
      if (this.board[row][column] === 'X') {
        xspots++;
      } else if (this.board[row][column] === 'O') {
        ospots++;
      }

      column--;
    }

    if (xspots === 3) {
      return 'X';
    } else if (ospots === 3) {
      return 'O';
    }



    return false;
  };

  this.checkWin = function() {
    var winner = this.checkRows();
    if (!winner) {
      winner = this.checkColumns();
      if (!winner) {
        winner = this.checkDiagonals();
      }
    }

    return winner;
  };

  this.play = function(player, x, y) {
    if (!this.board[x][y] && this.currentPlayer === player.toUpperCase()) {
      this.board[x][y] = player.toUpperCase();
      this.toggleCurrent();
      return true;
    }

    return false;
  };
}

var game = new TicTacToe();
game.play('x', 1, 1);
game.play('o', 2, 0);
game.play('x', 1, 2);
game.play('o', 0, 0);
game.play('x', 1, 0);
game.play('o', 2, 1);
game.board;
game.checkWin();

function TicTacToe() {
  this.currentPlayer = 'X';
  this.board = [[null, null, null], [null, null, null], [null, null, null]];

  this.toggleCurrent = function() {
    this.currentPlayer == 'X' ? this.currentPlayer = 'O' : this.currentPlayer = 'X';
  };

  this.play = function(player, x, y) {
    if (player != this.currentPlayer) {
      console.log("It's not your turn!")
      return false;
    }
    else if (this.board[x][y] == null) {
      this.board[x][y] = player;
      this.toggleCurrent();
      return true;
    }
    else {
      console.log("Cell already filled!");
      return false;
    };
  };

  this.checkWin = function() {
    var board = this.board;

    function checkRows() {
      for(var i = 0; i <= 2; i++) {
        var left = board[i][0];
        var middle = board[i][1];
        var right = board[i][2];
        if (left == middle && middle == right && middle != null) {
          middle == 'X' ? console.log('Player X wins!') : console.log('Player O wins!');
          return true;
        };
      };
      return false;
    };

    function checkColumns() {
      for(var i = 0; i <= 2; i++) {
        var top = board[0][i];
        var middle = board[1][i];
        var bottom = board[2][i];
        if (top == middle && middle == bottom && middle != null) {
          middle == 'X' ? console.log('Player X wins!') : console.log('Player O wins!');
          return true;
        };
      };
      return false;
    };

    function checkDiagonals() {
      var topLeft = board[0][0];
      var middle = board[1][1];
      var bottomRight = board[2][2];
      var bottomLeft = board[2][0];
      var topRight = board[0][2];

      if (topLeft == middle && middle == bottomRight && middle != null) {
        middle == 'X' ? console.log('Player X wins!') : console.log('Player O wins!');
        return true;
      }
      else if (bottomLeft == middle && middle == topRight && middle != null) {
        middle == 'X' ? console.log('Player X wins!') : console.log('Player O wins!');
        return true;
      };
      return false;
    };

    if(!(checkRows() || checkColumns() || checkDiagonals())) {
      console.log("No winner yet!")
      return false;
    } else {
      return true;
    };
  };
};


///////// CHECK FUNCTIONALITY //////////

myGame = new TicTacToe();
myGame.currentPlayer;
myGame.checkWin();

myGame.play("X", 1, 1);
myGame.play("O", 0, 0);
myGame.checkWin();
myGame.board;

myGame.play("X", 1, 0);
myGame.play("O", 0, 1);
myGame.play("O", 2, 2); // returns false because not 'O's turn
myGame.board;
myGame.checkWin();

myGame.play("X", 1, 2);
myGame.board;
myGame.checkWin();

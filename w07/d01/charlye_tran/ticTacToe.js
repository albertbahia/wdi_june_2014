// Write a TicTacToe constructor ('class') in JavaScript. Your class should have
// the following:
//
// Properties
// * currentPlayer - string, either "X" or "O" (starts as "X")
// * board        - 3x3 array, starts as all null e.g. [ [null, null, null],
//                                                       [null, null, null],
//                                                       [null, null, null]]
//
// Methods
// * toggleCurrent() - changes the value of currentPlayer to be the other player.
// * play(player, x, y) - makes a play for player ("X" or "O") at the point specified on the grid. Updates board.
// * checkWin() - returns "X", "O", or false depending on whether or not someone has won.
//
// Suggestion:
// Write three methods that will be used by checkWin:
// * checkRows(), checkColumns(), checkDiagonals();

// myGame = new TicTacToe();
// myGame.currentPlayer;
// myGame.checkWin();
var board = [ [null, null, null], [null, null, null], [null, null, null]];
function TicTacToe(currentPlayer){
  this.currentPlayer = currentPlayer;
  this.board = board;
  var toggleCurrent = function(player){
    if (player == "X"){
      currentPlayer = "O";
    } else (player == "O") {
      currentPlayer = "X";
    }
  };
  this.toggleCurrent = toggleCurrent(currentPlayer);
}

  var play = function(index, nestedIndex){
    this.board[index][nestedIndex] = currentPlayer;
    checkWin();
    this.toggleCurrent();
    return board;
  };

  var checkRows = function(){
    if (this.board[0][0] == this.board[0][1] && this.board[0][1]== this.board[0][2]){
      return this.currentPlayer + " wins the game!";
    } else if (this.board[1][0] == this.board[1][1] && this.board[1][1]== this.board[1][2]){
      return this.currentPlayer + " wins the game!";
    } else if (this.board[2][0] == this.board[2][1] && this.board[2][1]== this.board[2][2]){
      return this.currentPlayer + " wins the game!";
    }
  };

  var checkColumns = function(){
    if (this.board[0][0] == this.board[1][0] && this.board[1][0]== this.board[2][0]){
      return this.currentPlayer + " wins the game!";
    } else if (this.board[0][1] == this.board[1][1] && this.board[1][1]== this.board[2][1]){
      return this.currentPlayer + " wins the game!";
    } else if (this.board[0][2] == this.board[1][2] && this.board[1][2]== this.board[2][2]){
      return this.currentPlayer + " wins the game!";
    }
  };

  var checkDiagonals = function(){
    if (this.board[0][0] == this.board[1][1] && this.board[1][1]== this.board[2][2]){
      return this.currentPlayer + " wins the game!";
    } else if (this.board[0][2] == this.board[1][1] && this.board[1][1]== this.board[2][0]){
      return this.currentPlayer + " wins the game!";
    }
  };

  var checkwin = function(){
    checkRows();
    checkColumns();
    checkDiagonals();
    toggleCurrent();
  };
}

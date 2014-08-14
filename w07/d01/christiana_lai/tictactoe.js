# Exercise: TicTacToe

Write a TicTacToe constructor ('class') in JavaScript. Your constructor should
make objects with the following:

Properties
* currentPlayer - string, either "X" or "O" (starts as "X")
* board        - 3x3 array, starts as all null e.g. [ [null, null, null],
                                                      [null, null, null],
                                                      [null, null, null]]

Publicly-Used Methods
**These are the ones used to run the game**
* play(player, x, y) - makes a play for player ("X" or "O") at the point specified on the grid.
                      Updates board & current player. Returns true if play was valid, false if not.
* checkWin() - returns "X", "O", or false depending on whether or not someone has won.

Privately used methods
**These are the ones used by other methods to help do the method`s job**
* toggleCurrent() - changes the value of currentPlayer to be the other player. Only used by other method(s) in your 'class'.
* checkRows(), checkColumns(), checkDiagonals(); - only used internally by checkWin


```js
myGame = new TicTacToe();
myGame.currentPlayer;
myGame.checkWin();

myGame.play("X", 1, 1);
myGame.play("O", 0, 0);
myGame.checkWin();
myGame.board();

myGame.play("X", 1, 0);
myGame.play("O", 0, 1);
myGame.play("O", 2, 2); // returns false because not 'O's turn
myGame.board();
myGame.checkWin();

myGame.play("X", 1, 2);
myGame.board();
myGame.checkWin();
````````````````````````````````````````````

function TicTacToe(currentPlayer, board) {
  this.currentPlayer = "X";
  this.board = [ [null, null, null],
                 [null, null, null],
                 [null, null, null]];

  this.play = function(player, x, y) {
    if (this.board[x][y] === null){
      this.board[x][y] = player;
      this.toggleCurrent
      returns true;
    } else {
      console.log("Spot is taken. Try again!")
      returns false;
    }

* checkWin() - returns "X", "O", or false depending on whether or not someone has won.

  this.checkWin = function() {

  }


* toggleCurrent() - changes the value of currentPlayer to be the other player. Only used by other method(s) in your 'class'.

  this.toggleCurrent = function() {
    if (this.currentPlayer === "X") {
      this.currentPlayer = "O";
    } else {
      this.currentPlayer === "X"
    }
  };

* checkRows(), checkColumns(), checkDiagonals(); - only used internally by checkWin
  this.checkWin = function() {
  this.checkRows = function() {
    var topLeft       = this.board[0][0];
    var topMiddle     = this.board[0][1];
    var topRight      = this.board[0][2];
    var middleLeft    = this.board[1][0];
    var middle        = this.board[1][1];
    var middleRight   = this.board[1][2];
    var bottomLeft    = this.board[2][0];
    var bottomMiddle  = this.board[2][1];
    var bottomRight   = this.board[2][2];
  }

  this.checkColumns = function() {
    var topLeft       = this.board[0][0];
    var topMiddle     = this.board[0][1];
    var topRight      = this.board[0][2];
    var middleLeft    = this.board[1][0];
    var middle        = this.board[1][1];
    var middleRight   = this.board[1][2];
    var bottomLeft    = this.board[2][0];
    var bottomMiddle  = this.board[2][1];
    var bottomRight   = this.board[2][2];
  }

this.checkDiagonals = function() {
  var topLeft       = this.board[0][0];
  var topRight      = this.board[0][2];
  var middle        = this.board[1][1];
  var bottomLeft    = this.board[2][0];
  var bottoRight    = this.board[2][2];
  }
}

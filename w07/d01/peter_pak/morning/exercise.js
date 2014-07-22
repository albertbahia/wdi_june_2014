// # Exercise 2: Make a car constructor
//
// Cars have:
//
// Properties:
// make
// model
// color
// speed (0 initially)
// maxSpeed
//
// Methods:
// accelerate(amt) - increase speed upto maxSpeed
// slowDown(amt) - decrease speed by amount (not less than 0)
// repaint(newColor)
//
//
// ### Larger Exercise: TicTacToe
//
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

var accelerateFunction = function(amt) {

}


function Car(make, model, color, maxSpeed) {
  this.make = make;
  this.model = model;
  this.color = color;
  this.speed = 0;
  this.maxSpeed = maxSpeed;
  this.accelerate = function() {
    return this.speed = maxSpeed;
  };
  this.slowDown = function() {
    this.speed -= 5;
    if (this.speed < 0) {
      this.speed = 0
    };
    return this.speed
  };
}

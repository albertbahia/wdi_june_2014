// ### Larger Exercise: TicTacToe
//
// Write a TicTacToe constructor ('class') in JavaScript. Your class should have
// the following:
//
// Properties
// * currentPlayer - string, either "X" or "O" (starts as "X")
// * board - 3x3 array, starts as all null e.g. [ [null, null, null],
// [null, null, null],
// [null, null, null]]
//
// Methods
// * toggleCurrent() - changes the value of currentPlayer to be the other play
// er.
// * play(player, x, y) - makes a play for player ("X" or "O") at the point specified on the grid. Updates board.
// * checkWin() - returns "X", "O", or false depending on whether or not someone has won.
//
// Suggestion:
// Write three methods that will be used by checkWin:
// * checkRows(), checkColumns(), checkDiagonals();



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
```

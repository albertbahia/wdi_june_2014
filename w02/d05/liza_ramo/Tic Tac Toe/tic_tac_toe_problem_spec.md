## Tic Tac Toe Problem Spec

We are going to implement the game of Tic-Tac-Toe! This application will be a
turn-based command-line Ruby application that allows two players (on one
computer) to play Tic-Tac-Toe.

* When the game starts, an empty board should be displayed, and player X should
be prompted for input.
* The prompt will ask player X to first enter a row number, then a column number
for the square they wish to play in.
  * If the values entered by player X are invalid or point to a square that has
  already been filled, player X should be prompted again for input
* After accepting player X's inputs, a new updated board should be displayed and
player O should be asked for input.
  * Steps for collecting player O's input should be identical to those for
  player X.
* After accepting player O's inputs, a new updated board should be displayed and
player X should be asked for input.
* After every move,
  * If a player has won, the game should end and a winner
  message should be displayed.
  * If the game is a draw, the game should end and a draw message should be
  displayed.
* After the winner or draw message, the user should be prompted to choose
whether to play a new game or to quit the program.

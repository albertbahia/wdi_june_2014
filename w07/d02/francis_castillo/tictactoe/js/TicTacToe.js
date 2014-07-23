// arr.filter(function(b){ return x===x; }).length;

function TicTacToe () {

  this.currentPlayer = "x";
  this.board = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ];
  this.movesCount = 0;

  this.togglePlayer = function(arguments) {
    if (this.currentPlayer === 'x') {
      this.currentPlayer = 'o';
      this.movesCount++;
    } else {
      this.currentPlayer = 'x';
      this.movesCount++;
    }
    return "It's " + this.currentPlayer + "'s move!";
  };

  this.play = function(pos) {
    var index = [null, null];
    for (var i = 0; i < this.board.length; i++) {
      if (this.board[i].indexOf(pos) !== -1) {
        index[0] = i;
        index[1] = this.board[i].indexOf(pos);
        this.board[i][index[1]] = this.currentPlayer;
      }
    }

    if (index[1] === null) {
      return "please choose again";
    }
    this.togglePlayer();
    this.checkWin();
  };

  this.checkWin = function(arguments) {
    if (this.movesCount > 4) {
      for (var i = 0; i < this.board.length; i++) {
        if (this.board[i].filter(function(){ return 'x'==='x'; }).length === 3) {
          console.log("X's wins!");
        } else if (this.board[i].filter(function(){ return 'o'==='o'; }).length === 3){
          console.log("O's wins!");
        }
      }
    }else {
      console.log("No winner Yet!");
    }

  };

}

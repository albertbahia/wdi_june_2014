function Connectfour() {
  this.board = [[null, null, null, null, null, null],
                [null, null, null, null, null, null],
                [null, null, null, null, null, null],
                [null, null, null, null, null, null],
                [null, null, null, null, null, null],
                [null, null, null, null, null, null],
                [null, null, null, null, null, null]];

  this.currentPlayer = 'black';

  this.switchPlayer = function() {
    if (this.currentPlayer === 'black') {
      this.currentPlayer = 'red';
    } else {
      this.currentPlayer = 'black';
    }
  }

  this.makeMove = function(column) {
    var boardColumn = this.board[column];
    for (var i = 0; i < boardColumn.length; i++) {
      if (!boardColumn[i]) {
        boardColumn[i] = this.currentPlayer;
        this.switchPlayer();
        break;
      }
    }
  }
}

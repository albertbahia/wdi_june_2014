function TicTacToe(){
  this.currentPlayer = "X";
  this.board = [[null, null, null], [null, null, null], [null, null, null]];

  this.toggleCurrent() = function(){
    this.currentPlayer = "O";
    return currentPlayer;
  }

  this.play = function(player, x, y){
    player = this.currentPlayer;
    if (this.board[x][y] === null){
      this.board[x][y] = this.currentPlayer;
    }
  }

  this.checkWin = function(){
    var checkRows = function(){
      if (this.board[0][0] === this.board[0][1] === this.board[0][2] ){
        return this.board[0][0];
      } else if (this.board[1][0] === this.board[1][1] === this.board[1][2]) {
        return this.board[1][0];
      }else if (this.board[2][0] === this.board[2][1] === this.board[2][2] ) {
        return this.board[2][0];
      }
    }

    var checkColumns = function() {
      if (this.board[0][0] === this.board[1][0] === this.board[2][0]){
        return this.board[0][0];
      } else if (this.board[0][1] === this.board[1][1] === this.board[2][1]) {
        return this.board[0][1];
      } else if (this.board[0][2] === this.board[1][2] === this.board[2][2]) {
        return this.board[0][2];
      }
    }

    var checkDiagonals = function() {
      if (this.board[0][0] === this.board[1][1] === this.board[2][2]) {
        return this.board[0][0];
      } else if (this.board[2][0] === this.board[1][1] === this.board[0][2]) {
        return this.board[2][0];
      }
    }
  }
}

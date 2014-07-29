function TicTacToe() {
  this.currentPlayer = 'X';
  this.board = [
    ['A','B','C'],
    ['D','E','F'],
    ['K','M','C']
  ]

  this.toggleCurrent = function() {
    this.currentPlayer = this.currentPlayer === 'X' ? 'O' : 'X';
  }

  this.play = function(player, row, column) {
    this.board[row][column] = player;
  }

  function checkRows() {
  // var checkRows = function() {
  // this.checkRows = function() {
    if(this.board[0][0] === this.board[0][1] && this.board[0][2] === this.board[0][1])
      return this.board[0][0];
    else if(this.board[1][0] === this.board[1][1] && this.board[1][2]  === this.board[1][1])
      return this.board[1][0];
    else if(this.board[2][0] === this.board[2][1] && this.board[2][2]  === this.board[2][1])
      return this.board[2][0];
    else
      return false;
  }

  this.checkColumns = function() {
    if(this.board[0][0] === this.board[1][0] && this.board[2][0]  === this.board[1][0])
      return this.board[0][0];
    else if(this.board[0][1] === this.board[1][1] && this.board[2][1]  === this.board[1][1])
      return this.board[0][1];
    else if(this.board[0][2] === this.board[1][2] && this.board[2][2]  === this.board[1][2])
      return this.board[0][2];
    else
      return false;
  }

  this.checkDiagonals = function() {
    if(this.board[1][1] === this.board[0][0] && this.board[0][0] === this.board[2][2])
      return this.board[0][0];
    else if(this.board[0][2] === this.board[1][1] && this.board[1][1] === this.board[2][0])
      return this.board[0][2];
  }

  this.checkWin = function() {
    var winner = false;
    if(checkRows())
      winner = checkRows();
    else if (checkColumns())
      winner = checkColumns();
    else if (checkDiagonals())
      winner = checkDiagonals();
    else
      winner = false;
    
    return winner ? winner : false;
  }

  this.drawBoard = function() {
    console.log('');
    console.log('Tic Tac Toe');
    for( row in this.board ) {
      console.log(select(this.board[row], isXorO).join(' '));
    }
  }
};

game = new TicTacToe();
game.drawBoard();
game.play('X',0,0);
game.drawBoard();
game.play('X',0,1);
game.drawBoard();
game.play('X',0,2);
game.drawBoard();
game.checkWin();
function select(array, callback) {
  var newArray = [];
  for (var i = 0; i < array.length; i++) {
    if (callback(array[i]))
      newArray.push(array[i]);
    else
      newArray.push('_')  
  }
  return newArray;
}

function isXorO(value) {
  return value === 'X' || value === 'O';
}

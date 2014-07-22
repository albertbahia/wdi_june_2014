function ticTacToe(){
  this.currentplayer = "X";
  this.board = [[null, null, null],
                [null, null, null],
                [null, null, null]];
  console.log(this.board);

    this.play = function(player, x, y){
      if(this.board[x][y] == null){
        this.board[x][y] = player;
        this.checkWin();
      } else {
        console.log("Not possible chump.")
      }
      console.log(this.board)
    }


    this.checkWin = function(){
      var winnerStringX="";
      var winnerStringO="";

      for(var indOne=0;indOne<this.board.length;indOne++){
        for(var indTwo=0;indTwo<this.board[indOne].length;indTwo++){
          if(this.board[indOne][indTwo]=="X"){

            winnerStringX += (String(indOne)+String(indTwo));

          } else if(this.board[indOne][indTwo]=="O"){

            winnerStringO += (String(indOne)+String(indTwo));
          }
        }
      }

      if (winnerStringX==("000102"||"101112"||"202122"||"001020"||"011112"||"202122"||"001122"||"021120")){
        console.log("X IS THE WINNNNNEERR");
      } else if(winnerStringO==("000102"||"101112"||"202122"||"001020"||"011112"||"202122"||"001122"||"021120")){
        console.log("O IS THE WINNNERRRR");
      } else {
        console.log("Keep Playing.")
        console.log(this.board);
      }
  }
}

newGame = new ticTacToe();
newGame.play("X", 0, 0);
newGame.play("X", 0, 1);
newGame.play("X", 0, 2);
console.log(newGame.board);
console.log(newGame.checkWin());

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
      var winnerArrayX=[];
      var winnerArrayO=[];

      for(var indOne=0;indOne<this.board.length;indOne++){
        for(var indTwo=0;indTwo<this.board[indOne].length;indTwo++){
          if(this.board[indOne][indTwo]=="X"){

            winnerArrayX.push(String(indOne) + String(indTwo));

          } else if(this.board[indOne][indTwo]=="O"){

            winnerArrayO.push(String(indOne) + String(indTwo));
          }
        }

      }

console.log(winnerArrayO);
      // if (winnerArrayX==("000102"||"101112"||"202122"||"001020"||"011112"||"202122"||"001122"||"021120")){
      //   console.log("X IS THE WINNNNNEERR");
      // } else if(winnerArrayO==("000102"||"101112"||"202122"||"001020"||"011112"||"202122"||"001122"||"021120")){
      //   console.log("O IS THE WINNNERRRR");
      // } else {
      //   console.log("Keep Playing.")
      //   console.log(this.board);
      // }

        if((winnerArrayX.indexOf("00")!=-1) && (winnerArrayX.indexOf("01")!=-1) && (winnerArrayX.indexOf("02")!=-1) ||
          (winnerArrayX.indexOf("10")!=-1) && (winnerArrayX.indexOf("11")!=-1) && (winnerArrayX.indexOf("12")!=-1) ||
          (winnerArrayX.indexOf("20")!=-1) && (winnerArrayX.indexOf("21")!=-1) && (winnerArrayX.indexOf("22")!=-1) ||
          (winnerArrayX.indexOf("00")!=-1) && (winnerArrayX.indexOf("10")!=-1) && (winnerArrayX.indexOf("20")!=-1) ||
          (winnerArrayX.indexOf("01")!=-1) && (winnerArrayX.indexOf("11")!=-1) && (winnerArrayX.indexOf("12")!=-1) ||
          (winnerArrayX.indexOf("00")!=-1) && (winnerArrayX.indexOf("11")!=-1) && (winnerArrayX.indexOf("22")!=-1) ||
          (winnerArrayX.indexOf("02")!=-1) && (winnerArrayX.indexOf("11")!=-1) && (winnerArrayX.indexOf("20")!=-1)){
          console.log("X IS THE WINNNNNEERR");
        }





  }
}

newGame = new ticTacToe();
newGame.play("X", 0, 0);
newGame.play("X", 0, 1);
newGame.play("X", 0, 2);
console.log(newGame.board);
console.log(newGame.checkWin());

function Car (make,model,color,maxSpeed) {
  this.make = make;
  this.model = model;
  this.color = color;
  this.speed = 0;
  this.maxSpeed = maxSpeed

  this.accelerate = function (amt) {

    if (amt >= maxSpeed) {
      this.speed = maxSpeed;
    } else {
      this.speed = amt;
    }
  };

  this.slowDown = function (amt) {
    this.speed = this.speed - amt;
  };

  this.repaint = function (newColor) {
    this.color = newColor;
  };
}

whip = new Car('Tesla','S','black',160);


function ticTacToe () {
  this.currentPlayer = currentPlayer;
  this.board = [[null,null,null],[null,null,null],[null,null,null]];

}

  this.play = function(player,x,y) {

    return game.board[x][y] = player;

  }
}

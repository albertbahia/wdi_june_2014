describe("TicTacToe", function() {
  var myGame;
  var intialBoard;
  beforeEach(function() {
    myGame = new TicTacToe();
    initialBoard = myGame.board;
  });

// Attributes
  it("should have a current player", function() {
    expect(myGame.currentPlayer).toBeDefined();
    expect(myGame.currentPlayer).toBe('X');
  });

  it("should have a board", function() {
    expect(myGame.board).toBeDefined();
    expect(myGame.board.length).toBe(3);
  });

// Behavior
  describe("toggleCurrent", function() {
    it("should be able to change players", function() {
      myGame.toggleCurrent();
      expect(myGame.toggleCurrent).toBeDefined();
      expect(myGame.currentPlayer).toBe('O')
    });
  });

  describe("play", function() {
    it("should be able to fill a cell", function() {
      myGame.play('X', 1, 1);
      expect(myGame.board[1][1]).toBe('X')
    });

    it("should not allow a player to go twice", function() {
      myGame.play('X', 1, 1);
      expect(myGame.play('X', 1, 1)).toBe(false)
    });

    it("should not allow a player to mark a cell that's already been filled", function() {
      myGame.play('X', 1, 1);
      myGame.play('O', 1, 0);
      expect(myGame.play('X', 1, 0)).toBe(false)
    });
  });

  describe("checkWin", function() {
    it("should return false if nobody has won", function() {
      expect(myGame.checkWin()).toBe(false);
    });

    it("should return true if somebody has won via a row", function() {
      myGame.play("X", 1, 1);
      myGame.play("O", 0, 0);
      myGame.play("X", 1, 0);
      myGame.play("O", 0, 1);
      myGame.play("X", 1, 2);
      expect(myGame.checkWin()).toBe(true);
    });

    it("should return true if somebody has won via a column", function() {
      myGame.play("X", 0, 1);
      myGame.play("O", 0, 0);
      myGame.play("X", 1, 1);
      myGame.play("O", 1, 0);
      myGame.play("X", 2, 1);
      expect(myGame.checkWin()).toBe(true);
    });

    it("should return true if somebody has won via a diagonal", function() {
      myGame.play("X", 0, 0);
      myGame.play("O", 0, 1);
      myGame.play("X", 1, 1);
      myGame.play("O", 1, 0);
      myGame.play("X", 2, 2);
      expect(myGame.checkWin()).toBe(true);
    });

  });

});

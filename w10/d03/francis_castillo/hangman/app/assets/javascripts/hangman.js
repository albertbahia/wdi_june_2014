var game = {
  initialize: function(){
    this.fetchWord();
    this.render();
    },
  render: function() {
    var boardHTML = this.template(this.board);
    $('#container').replaceWith($(boardHTML));
    },
  fetchWord: function() { $.ajax('/fetch_word/', {type: "GET"}).done(function(word) {
    this.board.answer = word["word"].split("");
    this.board.correct = " ".split
      .call(Array(this.board.answer.length), ",");

    return word["word"];
    game.render();
  }.bind(this))},
  guessedLetter: function() {
    var letter = $('#guessed-letter').val();
    var letterIndex = game.board.answer.indexOf(letter);

    if (letterIndex >= 0) {
      game.board.answer.forEach(function(element, index) {
        if(element === letter) {
          game.board.correct[index] = letter;
        }
      });
    } else if (letterIndex === -1) {
      if (game.board.guessed.indexOf(letter) === -1) {
        game.board.guessed.push(letter);
        game.board.guessesLeft--;
        console.log("wtf here");
      }
    }
    game.board.turns++;
    game.checkWin();
    game.render();
    $('#inputs').on('click', '#guess', game.guessedLetter);
  },
  checkWin: function() {
    if (game.board.guessesLeft === 0) {
      alert("You lose: get a dictionary Brah!");
      game.initialize();
      game.board.guessed = [];
      game.board.guessesLeft = 8;
    } else if (game.board.turns >= game.board.answer.length) {
        if (game.board.answer.join() === game.board.correct.join()) {
          alert("Winner, winner chicken dinner!!");
          game.initialize();
          game.board.guessed = [];
          game.board.guessesLeft = 8;
        }
    }
  },
  giveUp: function() {
    game.board.correct = game.board.answer;
    game.initialize();
    game.board.guessed = [];
    game.board.guessesLeft = 8;
    game.board.correct = [];
    $('#inputs').on('click', '#guess', game.guessedLetter);

  },
  template: HandlebarsTemplates['hangman/board'],
  board: {
    turns: 0,
    guessed: [],
    guessesLeft: 8,
    answer: ""
  }

}

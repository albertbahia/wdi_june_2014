var game = {
  initialize: function(){
    console.log('initialized');
    this.fetchWord();
    $('body').on('click', '#guess', game.makeGuess);
    $('body').on('click', '#giveup', restart);
  },

  template: HandlebarsTemplates['hangman/board'],
  board: {},

  render: function() {
    console.log('render');
    ($('#container')).replaceWith(this.template(this.board));
  },

  fetchWord: function() {
    console.log('fetching');

    $.get('/fetch_word')
      .done(function(data) {
        console.log(data.word);
        this.board.answer = data.word.split('');
        this.board.guessed = [];
        this.board.guessesLeft = 8;
        this.board.correct = [];
        this.board.correct.length = data.word.length;
        this.render();
      }.bind(this));
  },

  makeGuess: function() {
    console.log('guessing...');
    var guessedLetter = $('#guessed-letter').val();
    var guess = getGuess(game.board.answer, guessedLetter);

    if (guess.length > 0 ) {
      for (var i = 0; i < guess.length; i++) {
        if (guess[i] != -1) {
          game.board.correct[guess[i]] = guessedLetter;
        }
      }
    } else {
      game.board.guessesLeft -= 1;
    }
      game.board.guessed.push(guessedLetter);
      game.render();
  }
};

function getGuess(word, letter) {
  var guess = [];
  for (var i = 0; i < word.length; i++) {
    if (word[i] === letter) {
      guess.push(i);
    }
  }
  return guess
}

function restart() {
  game.initialize();
  game.render();
}

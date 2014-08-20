var game = {
  initialize: function(){
    this.render();
    this.fetchWord();
    this.setCorrect();
  },
  render: function() {
    $('#container').empty().append(this.template());
  },
  fetchWord: function() {
    $.get('/fetch_word').done(function(data) {
      this.board.answer = data.word.split('');
    }.bind(this));

    this.board.wordLength = this.board.answer.length
  },
  makeGuess: function(letter) {
    var guess = $('#guessed-letter').val().split('');
    var changed = false;

    for (var i = 0; i < this.board.wordLength; i++) {
      if (this.board.answer[i] === guess) {
        this.board.correct[i] = guess;
        changed = true;
      }
    }

    if (guessesLeft)

    this.board.guesses = letter;
  },
  setCorrect: function() {
    for (var i = 0; i < this.board.wordLength; i++) {
      this.correct.push(undefined);
    }
  },
  template: HandlebarsTemplates['hangman/board'],
  board: {}
}

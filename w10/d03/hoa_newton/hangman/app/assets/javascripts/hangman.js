var game = {
  initialize: function(){
    console.log('initialized');
    this.fetchWord();

  },

  render: function() {
    console.log('render');
    ($('#container')).replaceWith(this.template(this.board));
  },

  fetchWord: function() {
    console.log('fetching');
    $.get('/fetch_word')
      .done(function(data) {
        console.log(this)
        // define the attr of board from what is returned from data
        this.board.answer = data.word.split('');
        this.board.correct.length = data.word.length;

        this.render();
      }.bind(this));
  },

  template: HandlebarsTemplates['hangman/board'],

  board: {
    answer: [],
    guessesLeft: 8,
    guessed: [],
    correct: []
  },

  makeGuess: function() {
    console.log("button clicked");
    var guessedLetter = $('#guessed-letter').val();
    game.board.guessed.push(guessedLetter);

    // for (i in game.board.answer) {
    	var indexOfGuessedLetter = game.board.answer.indexOf(guessedLetter)
      if (indexOfGuessedLetter != -1) {
        console.log("this letter exists dude");

        game.board.correct[indexOfGuessedLetter] = guessedLetter;

        console.log(game.board.correct[indexOfGuessedLetter]);
      } else {
	    game.board.guessesLeft -= 1;
	    console.log("Wrong ! Guesses left: " + game.board.guessesLeft);
    }
  }	
};







var game = {
  initialize: function(){
    console.log('initialized');
    this.fetchWord();
    },

  render: function() {
    console.log('render');
    $('#container').replaceWith()
    },

  fetchWord: function() {
    console.log('fetching');
  },

  template: HandlebarsTemplates['hangman/board'],
  board: {
    answer: null,
    correct: null,
    guessed: null,
    guessedLeft: null
  },

  addListeners: function() {

  },

  makeGuess: function(event) {

  }
}

var game = {
  initialize: function(){
    this.fetchWord();
    },

  render: function(){
    var container = $('#container');
    container.replaceWith(this.template(this.board));
    },

  fetchWord: function() {
    $.get('/fetch_word', function(data){
    this.board.currentWord = data['word'].split("");
    this.board.correct = new Array(this.board.currentWord.length);
    this.render();
    }.bind(this));
    // this.board.letterGuess;
    },

  template: HandlebarsTemplates['hangman/board'],

  board: {
  //   setCorrectLetters: function() {
  //   var boardArray = [];
  //   for(i = 0; i < this.currentWord.length; i++) {
  //     boardArray.push("");
  //   }
  //   return boardArray;
  // },

    letterGuess: function() {
    currentWord = game.board.currentWord;
    correctWord = game.board.correct;
    guessInput = $('#guessed-letter').val();
    if(jQuery.inArray(guessInput, currentWord)!==-1) {
      var indexOfLetter = currentWord.indexOf(guessInput);
      correctWord[indexOfLetter] = guessInput;
    } else {
      console.log('NOPE');
    }
    return correctWord;
    }
  }
};

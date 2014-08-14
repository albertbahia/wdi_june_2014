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
    var indices = getIndices(game.board.answer, guessedLetter);

    if (indices.length > 0 ) {
      for (var i = 0; i < indices.length; i++) {
        if (indices[i] != -1) {
          game.board.correct[indices[i]] = guessedLetter;
        }
      }
    } else {
      game.board.guessesLeft -= 1;
    }
      game.board.guessed.push(guessedLetter);
      game.render();
      game.checkWin();
      game.checkLose();
  },

  checkWin: function(){
    if (game.board.answer.join('') == game.board.correct.join('')){
    alert('You win!');
    }
  },

  checkLose: function(){
    if (game.board.guessesLeft <= 0) {
      alert('You lose! The answer was ' + game.board.answer.join(''));
    }
  }
};


//function to get muliple indices for guess in answer
function getIndices(wordArray, letter) {
  var indices = [];
  for (var i = 0; i < wordArray.length; i++) {
    if (wordArray[i] === letter) {
      indices.push(i);
    }
  }
  return indices
}

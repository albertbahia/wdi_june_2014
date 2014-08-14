var game = {
  initialize: function(){
    console.log('initialized');
    this.fetchWord();
  },

  render: function() {
    console.log('render');
    var container = $('#container');
    var gameTemplate = this.template(this.board);
    container.replaceWith(gameTemplate);
  },

  fetchWord: function() {
    console.log('fetching');
    $.get('/fetch_word')
    .done(function(data) {
      console.log(this);
      // define the attr of board from what is returned from the data
      this.board.answer = data.word.split("");
      this.board.correct.length = data.word.length;
      console.log(this.board.answer)
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

  guessLetter: function() {
    console.log("button clicked");
    var guessedLetter = $('#guessed-letter').val();
    var indexList = getIndices(game.board.answer, guessedLetter);

    if (indexList.length > 0 ) {
      for (var i = 0; i < indexList.length; i++) {
        if (indexList[i] != -1) {
          game.board.correct[indexList[i]] = guessedLetter;
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
      alert("YOU FOOL!  The answer was " + game.board.answer.join(''));
    }
  }

};

function getIndices(array, letter) {
  var indexArr = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i] === letter) {
      indexArr.push(i);
    }
  }
  return indexArr
};

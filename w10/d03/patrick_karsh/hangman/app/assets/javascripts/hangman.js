var game = {
  initialize: function(){ 
    console.log('initialized');
    this.fetchWord();
  },
  render: function() { console.log('render');
  ($('#container')).replaceWith(this.template(this.board)); 
  },
  fetchWord: function() { console.log('fetching'); 
    $.get("/fetch_word")
      .done (function(data){ 
      var word = data.word
      var correctLetters = data.word.split("");
      this.board.answer = correctLetters
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

  makeGuess: function(){
    console.log('button clicked'); 
    var guessedLetter = $('#guessed-letter').val(); 
    console.log(guessedLetter);
    var indices = getIndices(game.board.answer, guessedLetter); 
    console.log(indices); 

    if (indices.length >0 ) {
      for (var i = indices.length - 1; i >= 0; i--) {
        if (indices[i] != -1) { 
          game.board.correct[indices[i]] = guessedLetter; 
        }
      }
    } else{
      game.board.guessesLeft -= 1; 
    }
    game.board.guessed.push(guessedLetter);
    game.render();
  }
}; 

function getIndices(wordArray, letter) {
  var indices= []; 
  for (var i = wordArray.length - 1; i >= 0; i--) {
    if (wordArray[i] === letter) {
      indices.push(i); 
    }
  }
  return indices
}




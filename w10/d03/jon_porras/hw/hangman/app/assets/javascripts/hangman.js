var game = {
  initialize: function(){ console.log('initialized');
    fetchWord();
    emptySpaceInCorrect();

    render();
  },
  render: function() { render(); },
  fetchWord: function() {},
  template: HandlebarsTemplates['hangman/board'],
  board: board
}

var currentWord = [];
var correct = [];
var guessed = [];

var board = {
  currentWord: currentWord,
  guessed: guessed,
  guessesLeft: 8-guessed.length,
  correct: correct
}

var fetchWord = function() {
  $.get('/fetch_word')
    .done(function(data) {
      var newArr = data['word'].split("")
      for(var i=0;i<newArr.length;i++) {
        currentWord.push(newArr[i]);
      }
      console.log(currentWord);
      return currentWord;

    }, render)
    console.log('fetching');
}
console.log(currentWord);


var render = function() {
  $('#container').append(HandlebarsTemplates['hangman/board'](board));
  console.log(board['guessed']);
}

var guessedLetter = function() {
  var guess = $('#guessed-letter').val();
  guessed.push(guess);
  checkForLetter(guess, correct);
  render();
}

var emptySpaceInCorrect = function() {
  for(var i=0;i<currentWord.length;i++) {
    correct.push("");
  }
}

var checkForLetter = function(letter) {
  if(currentWord.indexOf(letter)>=0) {
    correct[currentWord.indexOf(letter)] = letter;
  }
}

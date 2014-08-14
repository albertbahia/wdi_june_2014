var game = {
  initialize: function(){
    console.log('initialized');
    this.fetchWord();
    },

  render: function() {
    console.log('render');
    $('#container').replaceWith(this.template(this.board));
    $("#giveup").on('click', function() {
      alert('quitters never win');
      location.reload();
    });
    },

  fetchWord: function() {
    console.log('fetching');
    var thisGameObject = this;
    $.get( "/fetch_word", function(data) {
      thisGameObject.board.word = data.word.split('');
      thisGameObject.board.correct = new Array(thisGameObject.board.word.length);
      thisGameObject.render();
    });
  },

  template: HandlebarsTemplates['hangman/board'],

  board: { guessed: [],
           guessesLeft: 8
         },

  guessLetter: function(letter) {
    var guessedArr = game.board.guessed;
    var correctArr = game.board.correct;
    var gameWord = game.board.word;
    if (game.board.guessesLeft > 1) {
      if (gameWord.indexOf(letter) !== -1) {
        for (var i = 0; i < gameWord.length; i++) {
          if (gameWord[i] === letter) {
          correctArr[i] = letter;
          game.render();
          checkArrays(correctArr, gameWord);
          }
        }
      } else if (guessedArr.indexOf(letter) == -1) {
        game.board.guessesLeft -= 1;
        guessedArr.push(letter);
        game.render();
      } else {}
    } else {
      game.board.guessesLeft -= 1;
      game.render();
      alert("you lose. answer was: " + game.board.word.join(''));
    }
  }
};




//
//
// function addLetter(letter) {
//   var gameWord = game.board.word;
//   for (var i = 0; i < gameWord.length; i++) {
//     if (gameWord[i] === letter) {
//       game.board.correct[i] = letter;
//       game.render();
//     }
//   }
// }


function checkArrays(arr1, arr2) {
  for (var i = 0; i < arr1.length; i++ ) {
    if (arr1[i] !== arr2[i] ) {
      return false;
    }
  }
  alert('You did it!');
  return true;
}

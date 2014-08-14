var game = {

  board: {},

  initialize: function() {
    game.fetchWord();
  },

  render: function() {
    $('#container').replaceWith(game.template(game.board));
    $('#inputs').on('click', '#guess', guessedLetter);
    $("#inputs").on('click', '#giveup', quitGame)
  },

  fetchWord: function() {
    $.get("/fetch_word", function(data) {
      var word = data.word;

      game.board.word = word.split('');
      game.board.guessed = [];
      game.board.guessesLeft = 8;
      game.board.correct = new Array(game.board.word.length);
    }).done(function() { game.render(); });
  },

  template: HandlebarsTemplates['hangman/board'],
}


function guessedLetter() {
  var hangmanWord = game.board.word;

  var correctArray = game.board.correct;
  var singleLetter = $('#guessed-letter').val();

  var correctGuess = false;

  for (var i = 0; i < hangmanWord.length; i++) {

    if (singleLetter === hangmanWord[i]) {

      correctArray.splice(i,1,singleLetter);
      correctGuess = true;
      console.log(correctArray);
    }
  }
  if (correctGuess === false) {
    game.board.guessesLeft-=1
  }
  game.board.guessed.push(singleLetter)
  console.log(game.board.guessed)
  $('#container').empty();
  game.render();
}

//
// function quitGame() {
//   game.board.guessesLeft = 0;
//   alert("The word was " + game.board.word.join("");
//   game.render();
// }

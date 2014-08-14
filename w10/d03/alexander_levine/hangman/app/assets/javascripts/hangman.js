var game = {
  initialize: function(){
    console.log('initialized');
    $('body').on('click', '#guess', guessLetter);
    $('body').on('keypress', '#guessed-letter', function(event){
    if (event.which === 13) {
      guessLetter();
    }
  });
    $('body').on('click', '#giveup', giveUp);
    this.fetchWord();
    },
  render: function(){
    console.log('render');
    $('#container').append(this.template(this.board));
    },
  fetchWord: function(){
    console.log('fetching');
    var currentGame = this;
    $.get('/fetch_word').done(function(data) {
      currentGame.board.word = data.word.split('');
      currentGame.board.correct = [];
      currentGame.board.correct.length = currentGame.board.word.length;
      currentGame.board.guessesLeft = 8;
      currentGame.board.guessed = [];
      currentGame.render();
    });
    },
  template: HandlebarsTemplates['hangman/board'],
  board: {correct: null,
          guessesLeft: null,
          guessed: null}
};

function guessLetter() {
  var correctAnswer = false;
  var answer = game.board.word;
  for (var j = 0; j < game.board.guessed.length; j++) {
    if ($('#guessed-letter').val() === game.board.guessed[j]) {
      return false;
    }
  }
  for (var i = 0; i < answer.length; i++) {
    if ($('#guessed-letter').val() === answer[i]) {
      game.board.correct.splice(i, 1, ($('#guessed-letter').val()));
      correctAnswer = true;
    }
  }
  if (correctAnswer === false) {
    game.board.guessesLeft -= 1;
  }
  game.board.guessed.push($('#guessed-letter').val());
  $('#container').empty();
  game.render();
  checkWin();
  checkLost();
}

function checkWin() {
  var match = false;
  var correctArray = game.board.correct;
  for (var i = 0; i < correctArray.length; i++) {
    if (correctArray[i]) {
      match = true;
    } else {
      return false;
    }
  }
  if (match === true) {
    alert("You win!!!");
  }
}

function checkLost() {
  if (game.board.guessesLeft === 0) {
    alert("You lose! The word was " + game.board.word.join(''));
    location.reload();
  }
}

function giveUp() {
  alert("Way to give up... the word was " + game.board.word.join(''));
  location.reload();
}

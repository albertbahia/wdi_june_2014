var game = {
  initialize: function(){
    console.log('initialized');
    this.fetchWord();
    $('body').on('click', '#guess', guessLetter);
    $('body').on('click', '#giveup', giveUp);
    },

  template: HandlebarsTemplates['hangman/board'],
  board: {},

  render: function() {
    $('#container').append(this.template(this.board));
  },

  fetchWord: function() {
    console.log('fetching');
    $.ajax({
      type: "GET",
      url: "/fetch_word"})
    .done(function(data){
      console.log(data.word);
      this.board.answer = data.word.split('');
      this.board.guessed = [];
      this.board.guessesLeft = 8;
      this.board.correct = [];
      this.board.correct.length = this.board.answer.length;
      console.log(this.board.correct.length);
      this.render();
    }.bind(this));
  }
};

function guessLetter(){
  console.log('hello');
  console.log(game);
  var answer = game.board.answer;
  var correctAnswer = false;
  var letterGuess = $('#guessed-letter').val();
  var alreadyGuessed = false;
  for (var i = 0; i < game.board.guessed.length; i++) {
    if (letterGuess === game.board.guessed[i]) {
      alreadyGuessed = true;
    }
  }
  if (alreadyGuessed === true) {
    alert("You've already guessed that letter.  Try again.");
  } else{
    for (var j = 0; j < answer.length; j++) {
      if ($('#guessed-letter').val() === answer[j]) {
        game.board.correct.splice(j, 1, letterGuess);
        correctAnswer = true;
      }
    }
    if (correctAnswer === false){
      game.board.guessesLeft -= 1;
    }
    game.board.guessed.push(letterGuess);
    $('#container').empty();
    game.render();
    checkWin();
  }
}


function checkWin(){
  var full = true;
  var answer = game.board.answer;
  for (var i = 0; i < answer.length; i++) {
    if (game.board.correct[i]){
      full = true;
    } else{
      full = false;
    }
  }
  if (full === true) {
    alert('You Won!!!');
    location.reload();
  } else if (game.board.guessesLeft === 0) {
    alert('You Lost!!! The answer was ' + game.board.answer.join('') + '');
    location.reload();
  } else {
    game.render();
  }
}

function giveUp(){
  alert('You gave up!!! The answer was ' + game.board.answer.join('') + '');
  location.reload();
}

var game = {
  initialize: function(){
    this.fetchWord();
  },
  render: function() {
    $('#container').replaceWith(this.template(this.board));
    this.addListeners();
  },
  fetchWord: function(){
    console.log('fetching');
    $.get('/fetch_word',function(data){
      game.board.answer = data.word.split('');
      game.board.correct = new Array(game.board.answer.length);
      game.board.guessed = [];
      game.board.guessesLeft = 8;
    }).done(function(){
      this.render();
    }.bind(this));
  },
  template: HandlebarsTemplates['hangman/board'],
  board: {
    answer: null,
    correct: null,
    guessed: null,
    guessesLeft: null
  }
  addListeners: function(){
    $('#container').on('click', '#guess', this.makeGuess.bind(this));
    $('body').on('keydown', this.makeGuess.bind(this));
    $('#container').on('click', '#giveup', this.giveUp.bind(this));
  }
  checkWin: function(){
    if (this.board.answer.join() == this.board.correct.join() ){
      alert("You won and saved the man!")
      this.initialize();
    }
  }
  makeGuess: function(event){
    var letter = getInputLetter($('#guessed-letter').val()) || getKeydown(event)
    if (this.board.guess.indexOf(letter) < 0 && letter){
      this.board.guessed.push(letter);
      if (this.board.answer.indexOf(letter) >= 0){
        this.board.answer.forEach(function(element.index){
          if (element == letter) { this.board.correct[index] = letter; }
        }.bind(this));
      } else {
        this.board.guessesLeft -= 1;
        if (this.board.guessesLeft == 0){
          alert('You lose, the word was ' + this.board.answer.join(''));
          this.initialize();
        }
      }
      this.render();
      this.checkWin();
    }
  },
  giveup: function() {
    this.board.correct = this.board.answer;
    this.render();
    setTimeout(function(){this.initialize()}.bind(this),2000);
  }
  function getInputLetter(value){
    if ((/[a-zA-Z]/).test(value)){
      return $('#guessed-letter').val();
    }
    else {
      return null
    }
  }
}



  function guessed(){
    var letter = $('#guessed-letter').val();
    console.log(letter);
  }

  // var game.board.guessed =[];
  // var guessedArray = game.board.guessed
  //  guessedLetter: function(){
  //     var letter = $('#guessed-letter').val())
  //     $('#guess').on('click', function(){
  //     console.log(guessedArray.push(letter));
  //       // if (letter === game.board.word.split('')){
  //       //   $('.letter').append(letter);
  //       // }
  //   }.bind(this));
  // }

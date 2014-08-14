var game = {
  initialize: function() {
    this.fetchWord();
  },
  render: function() {
    $('#container').replaceWith(this.template(this.board));
    this.addListeners();
  },
  fetchWord: function() {
    $.get('/fetch_word')
    .done(function(data){
      console.log(this)
      this.board.answer = data.word.split('');
      this.board.correct = new Array(this.board.answer.length);
      this.board.guessed = [];
      this.board.guessesLeft = 8;
      this.render();
    }.bind(this));
  },
  template: HandlebarsTemplates['hangman/board'],
  board: {
    answer: null,
    correct: null,
    guessed: null,
    guessesLeft: null
  },
  addListeners: function() {
    $('#container').on('click','#guess', this.makeGuess.bind(this));
    $('body').on('keydown',this.makeGuess.bind(this));
    $('#container').on('click','#giveup', this.giveUp.bind(this));
  },
  checkWin: function() {
    if (this.board.answer.join() == this.board.correct.join() ){
      alert('Winner! Go grab yourself a chicken dinner!');
      this.initialize();
    }
  },
  makeGuess: function(event) {
    var letter = getInputLetter($('#guessed-letter').val()) || getKeydown(event);
    if (this.board.guessed.indexOf(letter) < 0 && letter){
      this.board.guessed.push(letter);
      if (this.board.answer.indexOf(letter) >= 0){
        this.board.answer.forEach(function(element,index,array){
          if (element == letter){ this.board.correct[index] = letter; }
        }.bind(this));
      } else {
        this.board.guessesLeft -= 1;
        if (this.board.guessesLeft == 0){
          alert('You Lose, the word was ' + this.board.answer.join(''));
          this.initialize();
        }
      }
      this.render();
      this.checkWin();
    }
  },
  giveUp: function() {
    this.board.correct = this.board.answer;
    this.render();
    setTimeout(function(){this.initialize()}.bind(this),2000);
  }
};

function getInputLetter(value) {
  if ((/[a-zA-Z]/).test(value)){
    return $('#guessed-letter').val();
  } else {
    return null;
  }
}

function getKeydown(event){
  if (event.keyCode <= 90 && event.keyCode >= 65){
    return String.fromCharCode(event.keyCode).toLowerCase();
  } else {
    return null;
  }
}
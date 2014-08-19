var game = {
  initialize: function(){ console.log('initialized'); 
    this.fetchWord();
    this.addListeners();
  },
  render: function() { console.log('render');
    $('#container').replaceWith(this.template(this.board));
   },
  fetchWord: function() { console.log('fetching');
    $.get('/fetch_word',function(data){
      this.board.answer = data.word.split('');
      this.board.correct = new Array(this.board.answer.length);
      this.board.guessed = [];
      this.board.guessesLeft = 8;
      this.render();
    }.bind(this))
   },
  template: HandlebarsTemplates['hangman/board'],
  board: {
    answer: null,
    correct: [],
    guessed: [],
    guessesLeft: null
  },
  addListeners: function() {
    // $('body').on('click', '#guess', this.makeGuess.bind(this));
    $('body').on('keydown',this.makeGuess.bind(this));
    // $('body').on('click', '#giveup', this.quit.bind(this))
  },
  makeGuess: function(event) {
    var keyDownLetter = this.sanitize(event.keyCode);
    // var inputLetter = this.sanitize($('#guessed-letter').val());
    var letter = keyDownLetter; // || inputLetter;
    if (this.isValidPlay(letter)) {
      if (this.board.answer.indexOf(letter) >= 0){
        this.board.answer.forEach(function(element, index, answer){
          if (element === letter ) { this.board.correct[index] = letter; }
        }.bind(this));
      } else {
        this.board.guessesLeft -= 1;
        if (this.board.guessesLeft === 0) { alert('Loser, the word was: ' + this.board.answer.join(''))}
      }
      this.board.guessesLeft ? this.checkWin() : this.initialize();
    }
  },
  sanitize: function(input) {
    if (input >= 65 && input <= 90 ) {
      return String.fromCharCode(input).toLowerCase();
    } else if ((/[a-zA-Z]/).test(input) && input) {
      return input.toLowerCase();
    }
  },
  checkWin: function() {
    if (this.board.answer.join('') === this.board.correct.join('')){
      alert('Winner');
      this.render();
      this.initialize();
    } else {
      this.render();
    }
  },
  isValidPlay: function(letter) {
    if (this.board.guessed.indexOf(letter) < 0){
      this.board.guessed.push(letter);
      return true
    } else {
      return false;
    }
  }
  // quit: function(event) {
  //   this.board.guessesLeft = 0;
  //   alert('The answer was: '+ this.board.answer.join('')); 
  //   this.makeGuess(event);
  // }
}
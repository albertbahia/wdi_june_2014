$(function() {

  var game = {
    initialize: function(){
      this.fetchWord();
    },
    render: function() {
      var html = this.template(this.board);
      $('#container').replaceWith(html);
    },
    fetchWord: function() {
      $.get('/fetch_word').done((function(word) {
        this.board.currentWord = word.word.split('');
        this.setBoard();
        this.render();
      }).bind(this));
    },
    template: HandlebarsTemplates['hangman/board'],
    setBoard: function() {
      this.board.guessedLetters = [];
      this.board.correctWord = new Array(this.board.currentWord.length);
      this.board.guessesLeft = 8;
    },
    board: {
      currentWord: [],
      guessedLetters: [],
      correctWord: [],
      guessesLeft: 8
    },
    guess: function(letter) {
      var incorrect = true;
      for (var i in this.board.currentWord) {
        if (this.board.currentWord[i].toLowerCase() === letter.toLowerCase()) {
          this.board.correctWord[i] = letter.toLowerCase();
          incorrect = false;
        }
      }
      if (incorrect && this.board.guessedLetters.join('').indexOf(letter) < 0) {
        this.board.guessedLetters.push(letter);
        this.board.guessesLeft--;
      }
      this.render();
      this.checkWin();
    },
    checkWin: function() {
      if (this.board.guessesLeft === 0) {
        this.lose();
      } else if (this.board.currentWord.join() === this.board.correctWord.join()) {
        this.win();
      }
    },
    lose: function() {
      alert('You are terrible at this game: ' + this.board.currentWord.join(''));
      this.initialize();
    },
    win: function() {
      alert('You win!');
      this.initialize();
    }
  }

  $('body').on('click', '#guess', function() {
    var letter = $('#guessed-letter').val()[0];
    game.guess(letter);
    game.render();
  });
  $('body').on('click', '#giveup', function() {
    game.lose();
  });
  $('body').on('keypress', function(e) {
    if (e.which >= 97 && e.which <= 122) {
      game.guess(String.fromCharCode(e.which));
    }
  });
  game.initialize();
});

var game = {
  initialize: function(){
    console.log('initialized');
    this.fetchWord();
  },

  render: function() {
    console.log('render');
    // console.log(this.board);
    $('#container').append(this.template(this.board));
    $('#guess').click(function(ev) {
      console.log('Input Received');
      var input = $('#guessed-letter').val();
      console.log(input);

      var guessArray = game.board.guessed;
      guessArray.push(input);
      $('#guessed-letter').remove(input);
      $('#all-guesses').children().eq(1).text(guessArray);

      var guessesRemaining = game.board.guessesLeft;
      guessesRemaining -= 1;
      game.board.guessesLeft = guessesRemaining;

      // Checks input against answer
      var correctArray = game.board.correct;
      for(var i = 0; i < game.board.answer.length; i++) {
        if(input === game.board.answer[i]) {
          correctArray.push(input);
          $('#correct-guesses').children().children().eq(i).text(input);
          if(correctArray[i] === game.board.answer[i]) {
            alert('You won!');
          }
        }
        if (game.board.guessesLeft === 0) {
          alert('GAME OVER');
          $('#correct-guesses').children().remove();
        }
      }


      // console.log(correctArray);
      // console.log(game.board.guessesLeft);
      // console.log(guessArray);
    });
  },

  fetchWord: function() {
    console.log('fetching');

    $.ajax({
      url: '/fetch_word',
      type: 'GET'
    }).done(function(data) {
      console.log(data.word);
      // console.log(this);
      this.board.answer = data.word.split("");
      this.board.guessed = [];
      this.board.guessesLeft = 8;
      this.board.correct = new Array(this.board.answer.length);
      this.render();
    }.bind(this));

  },

  template: HandlebarsTemplates['hangman/board'],

  board: {}

}

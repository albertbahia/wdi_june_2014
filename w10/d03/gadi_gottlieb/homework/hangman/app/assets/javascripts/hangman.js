var game = {
  initialize: function(){
    console.log('initialized');
    this.fetchWord();
  },

  render: function() {
    console.log('render');
    $('#container').replaceWith(this.template(this.board));

  },

  fetchWord: function(){
    console.log('fetching');
    $.get('/fetch_word',function(data){
      var word = data.word;
      game.board.word = word.split('');
      game.board.guessed = [];
      game.board.guessesLeft = 8;
      game.board.correct = new Array(game.board.word.length);
    }).done(function(){
      this.render();
    }.bind(this));
  },

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


  template: HandlebarsTemplates['hangman/board'],

  board: {}


}
  function guessed(){
    var letter = $('#guessed-letter').val();
    console.log(letter);
  }

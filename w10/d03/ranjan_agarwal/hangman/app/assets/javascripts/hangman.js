var game = {
	initialize: function(){ console.log('initialized');
		this.fetchWord(); 
	},

  render: function() {
  	var container = $('#container');
  	container.replaceWith(this.template(this.board)); 
  },

  fetchWord: function() { 
  	$.get('/fetch_word', function(data) {
			this.board.currentWord = data['word'].split("");
			this.board.correct = new Array(this.board.currentWord.length);
			this.render();
		}.bind(this)); 
		
	},
  template: HandlebarsTemplates['hangman/board'],
  board: {
  	

  	letterGuess: function() {
  		var guessCurrentWord = game.board.currentWord;
  		var guessLettersArray = game.board.correct;
  		var letterGuessed = $('#guessed-letter').val();
  		console.log(letterGuessed);
  		if ($.inArray(letterGuessed, guessCurrentWord) !== -1) {
  			console.log('it is in the array!');
  			var indexOfLetter = guessCurrentWord.indexOf(letterGuessed);
  			console.log(indexOfLetter);
  			var correctLetter = guessLettersArray[indexOfLetter] = letterGuessed;

  		} else {
  			console.log('it is not in the array!');
  		}
  		return guessLettersArray;
  	}
  }
}	
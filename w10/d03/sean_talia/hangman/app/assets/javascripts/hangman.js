var game = {
  initialize: function(){
    game.fetchWord();
    game.addEventListeners();
  },
  render: function() {
    var gameTemplate = game.template(game.board);
    $('#container').replaceWith(gameTemplate);
  },
  fetchWord: function() {
    $.get('/fetch_word', function( data ){
      var word = data['word'];
      game.board['current'] = word.split('');
      game.board['guessed'] = [];
      game.board['guessesLeft'] = 8;
      game.board['correct'] = new Array(word.length);
      game.render();
      console.log(word);
    })
  },
  template: HandlebarsTemplates['hangman/board'],
  board: {},
  addEventListeners: function(){
    $('body').on('keypress', '#guessed-letter', function(event){
      if(event.keyCode == 13) { guessLetter(); }
    });
    $('body').on('click', '#guess', guessLetter);
    $('body').on('click','#giveup', giveUp);
  }
}

function guessLetter(){
  var gameBoard = game.board;
  var currentWord = gameBoard['current'];
  var guessedLetters = gameBoard['guessed']
  var letter = $('#guessed-letter').val();
  if (letter != '' && $.inArray(letter, guessedLetters) === -1) {
    guessedLetters.push(letter);
    indices = [];
    for (var i = 0; i < currentWord.length; i++){
      if (currentWord[i] === letter) {
        indices.push(i);
      }
    }
    if (indices.length > 0) {
      for(var j = 0; j < indices.length; j++){
        gameBoard['correct'][indices[j]] = letter;
      }
    }
    else {
      gameBoard['guessesLeft'] -= 1;
    }
    $('#guessed-letter').val('');
    game.render();
  }
  checkIfFinished();
}

function checkIfFinished(){
  var gameBoard = game.board;
  if (gameBoard['guessesLeft'] > 0) {
    if (arraysEqual(gameBoard['current'], gameBoard['correct'])){
      alert('Nice job! You\'re not that dumb.');
      game.fetchWord();
    }
  }
  else {
    alert('Sorry bruh. The word was \'' + gameBoard['current'].join('') + '\'!');
    game.fetchWord();
  }
}

function giveUp(){
  alert('Nice try! The word was \'' + game.board['current'].join('') + '\'.');
  game.fetchWord();
}

function arraysEqual(arr1, arr2) {
  return $(arr1).not(arr2).length == 0 && $(arr2).not(arr1).length == 0
}

var game = {
  initialize: function(){
    this.fetchWord();
    this.render();
    },
  render: function() {
    var boardHTML = this.template(this.board);
    $('#container').replaceWith($(boardHTML));
    },
  fetchWord: function() { $.ajax('/fetch_word/', {type: "GET"}).done(function(word) {
    this.board.answer = word["word"].split("");
    this.board.correct = " ".split
      .call(Array(this.board.answer.length), ",");
    console.log(this.board.correct);
    return word["word"];
    game.render();
  }.bind(this))},
  guessedLetter: function() {
    var letter = $('#guessed-letter').val();
    var letterIndex = game.board.answer.indexOf(letter);
    var dupeLetters = new Object(0);
    game.board.answer.forEach(function(element, index, array) {
      isNaN(dupeLetters[array[index]]) ? dupeLetters[array[index]] = 1 : dupeLetters[array[index]] += 1;

    })

    if (letterIndex != -1 && dupeLetters[letter] === 1) {
      game.board.correct.splice(letterIndex, 1, letter);

    } else if (letterIndex != -1 && dupeLetters[letter] > 1) {
      for (var i = 0; i < dupeLetters[letter] ; i++) {
        var newIndex = game.board.answer.indexOf(letter, letterIndex);
        game.board.correct.splice(newIndex, 1, letter);
        console.log("index b4: " + newIndex);
        if ((newIndex + 1) >=  (game.board.answer.length - 1)) {
          letterIndex = game.board.answer.length
        } else if (newIndex === 0) {
          letterIndex++;
        } else {
          letterIndex += newIndex;
        }
        console.log("index aft: " + newIndex);
      }

    } else if (game.board.guessed.indexOf(letter) === -1){
      game.board.guessed.push(letter);
      game.board.guessesLeft--;
    }
    game.board.turns++;
    game.checkWin();
    game.render();
    $('#inputs').on('click', '#guess', game.guessedLetter);
    console.log(game.board.answer);
  },
  checkWin: function() {
    if (game.board.guessesLeft === 0) {
      alert("You lose: get a dictionary Brah!");
      game.initialize();
      game.board.guessed = [];
      game.board.guessesLeft = 8;
    } else if (game.board.turns >= game.board.answer.length) {
      for (var i = 0; i < game.board.answer.length; i++) {
        if (game.board.answer[i] != game.board.correct[i]) {
          i = game.board.answer.length;
        } else if (game.board.answer[i] === game.board.correct[i] && i === game.board.answer.length - 1) {
          alert("Winner, winner chicken dinner!!");
          game.initialize();
          game.board.guessed = [];
          game.board.guessesLeft = 8;
        }
      }
    }
  },
  giveUp: function() {
    game.board.correct = game.board.answer;
    game.initialize();
    game.board.guessed = [];
    game.board.guessesLeft = 8;
    game.board.correct = [];
    $('#inputs').on('click', '#guess', game.guessedLetter);

  },
  template: HandlebarsTemplates['hangman/board'],
  board: {
    turns: 0,
    guessed: [],
    guessesLeft: 8,
    answer: ""
  }

}

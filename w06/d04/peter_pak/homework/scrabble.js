// Scrabble Word Finder
//
// Given the following arrays:
//
// var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],['G','D'],['C','M','P','B'],['F','H','W','V','Y'],['K'],[],[],['J','X'],[],['Q','Z']];
// var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];
// In a file, scrabble.js, write a program that will iterate over an array of strings and calculate the scrabble score for each of the strings. The final output should be an array containing the score value of each of the words. The expected score for 'watermelon' is 15.


var scrabbleLetterValues = [
  [],
  ['A','E','I','U','N','R','S','L','O','T'],
  ['G','D'],
  ['C','M','P','B'],
  ['F','H','W','V','Y'],
  ['K'],
  [],
  [],
  ['J','X'],
  [],
  ['Q','Z']];

var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];

for (var index in words) {
  var score = 0
  splitWords = words[index].split('');
    for (var i in splitWords) {
      for (var idx in scrabbleLetterValues) {
        if (scrabbleLetterValues[idx].(splitWords[i].toUpperCase()); > -1) {
        score += scrabbleLetterValues[idx];
        console.log(score);
      }
    }
  }
}

var finalScores = [];

for (var i = 0; i < words.length; i++) {
  var tiles = words[i].split('');
  //watermelon
  var count = 0
  for (var j = 0; j < tiles.length; j++ ) {
    var tile = tiles[j].toUpperCase();
    // tile 'W'
    for ( var k = 0; k < scrabbleLetterValues.length; k++) {
      if ( scrabbleLetterValues[k].indexOf( tile ) !== -1 ) {
        count += k;
      }
    }
  }
  finalScores.push(count)
}

console.log(finalScores);



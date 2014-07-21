var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],['G','D'],['C','M','P','B'],['F','H','W','V','Y'],['K'],[],[],['J','X'],[],['Q','Z']];
var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];

var finalScores = [];
for (var i = 0; i < words.length; i++) {
  var tiles = words[i].split('');
  var count = 0;
  for (var j = 0; j < tiles.length; j++){
    var tile = tiles[j].toUpperCase();
    for (var k = 0; k < scrabbleLetterValues.length; k++){
      if (scrabbleLetterValues[k].indexOf(tile) != -1 ) {
        count += k;
      }
    }
  }
  finalScores.push(count);
}

console.log(finalScores);

//loop through words to get each word
//split each word to get each letter
//
  
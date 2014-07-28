var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],['G','D'],['C','M','P','B'],
['F','H','W','V','Y'],['K'],[],[],['J','X'],[],['Q','Z']];

scrabblePoints = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];

var scrabblePoints = function(letter) {
  for(var i = 0; i < scrabbleLetterValues.length; i++) {
    if (scrabbleLetterValues[i].length != 0) {
      for(var x = 0; x < scrabbleLetterValues[i].length; x++) {
        if (scrabbleLetterValues[i][x] === letter.toUpperCase()) {
          return i;
        }
      }
    }
  }
}

var wordValue = function(word) {
  value = 0;
  letters = word.split('')
  for (var i = 0; i < letters.length; i++){
    value += scrabblePoints(letters[i]);
  }
  return value;
}

for (var i = 0; i < words.length; i++) {
  console.log(wordValue(words[i]));
}

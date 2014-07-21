var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],['G','D'],['C','M','P','B'],
['F','H','W','V','Y'],['K'],[],[],['J','X'],[],['Q','Z']];

letter_values = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];

var letter_value = function(letter) {
  for(var i = 0; i < scrabbleLetterValues.length; i++) {
    if (scrabbleLetterValues[i].length != 0) {
      for(var j = 0; j < scrabbleLetterValues[i].length; j++) {
          if (scrabbleLetterValues[i][j] === letter.toUpperCase()) {
            return i;
          }
      }
    }
  }
}

var word_value = function(word) {
  value = 0;
  letters = word.split('')
  for (var i=0; i < letters.length; i++){
    value += letter_value(letters[i]);
  }
  return value;
}

for (var i=0; i < words.length; i++) {
  console.log(word_value(words[i]));
}

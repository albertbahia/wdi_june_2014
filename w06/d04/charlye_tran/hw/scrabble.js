var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],['G','D'],['C','M','P','B'],['F','H','W','V','Y'],['K'],[],[],['J','X'],[],['Q','Z']];
var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];


    for ( i = 0; i < letters.length; i++) {
      for (i = 0; i < scrabbleLetterValues.length; i++) {
        var currentSet = scrabbleLetterValues[i];
          for (i = 0; i < currentSet.length; i++) {
            if (indexOf(letters) != -1 {
              return i;
            }
          }
        })
      }
    }

letters = [];
for (i = 0; i < words.length; i++){
  letters.push(words[i].toUpperCase().split(""));
}


var score = 0;
// loop through the length of the letters array
for (i = 0; i < letters.length; i++){
  //loop through the length of the array of letters in each word
  for ( x = 0; x < letters[x].length; i++){
    //loop through the indexes of the letter values
    for (y = 0; y < scrabbleLetterValues.length; i++){
      //loop through the array of values for a particular index of letter values
      for (t = 0; t < scrabbleLetterValues.length; i++){
        //find the corresponding letter in the current word
        var value = scrabbleLetterValues[i].indexOf(letters[i]);
        //if it exists, add the value of that index to the score
        if (value != -1) {
          score += i;
        }
      })
    }
  }
}
scores_array.push(score)

//testing JS syntax
var value = scrabbleLetterValues[1].indexOf("A");
if (value === 0) { (score + 1); }



//split words into letters
//for each letter
//compare each index of the indexes of the letter values to find the matching letter
//return the outer index value to an array or keep a counter of the value
//

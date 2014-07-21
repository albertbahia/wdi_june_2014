//split words into letters
//for each letter
//compare each index of the indexes of the letter values to find the matching letter
//return the outer index value to an array or keep a counter of the value

var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],['G','D'],['C','M','P','B'],['F','H','W','V','Y'],['K'],[],[],['J','X'],[],['Q','Z']];
var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];


letters = [];
for (i = 0; i < words.length; i++){
  letters.push(words[i].toUpperCase().split(""));
}


var score = 0;
var value = 0;
var scores_array = [];
var letter = null;
// loop through the length of the letters array
for (i = 0; i < letters.length; i++){
  for (c = 0; c < letters.[i].length; i++){
    var letter = letters[i][c];
      //loop through the length of the array of letters in each word
    for ( x = 0; x < letters[x].length; x++){
    //loop through the indexes of the letter values
      for (y = 0; y < scrabbleLetterValues.length; y++){
        //loop through the array of values for a particular index of letter values
        for (t = 0; t < scrabbleLetterValues[y].length; t++){
          //find the corresponding letter in the current word
          var value = scrabbleLetterValues[y].indexOf(letter);
            //if it exists, add the value of parent index to the score
            if (value != -1) { (score += t); }
            }
          }
        }
      //(scores_array.push(score));
      }
    }


//testing JS syntax
//var value = scrabbleLetterValues[1].indexOf("A");
//if (value != -1) { (score += 1); }

//testing
for (y = 0; y < scrabbleLetterValues.length; y++){
  //loop through the array of values for a particular index of letter values
  for (t = 0; t < scrabbleLetterValues[y].length; t++){
    //find the corresponding letter in the current word
    var value = scrabbleLetterValues[y][t].indexOf(letters[i]);
    //if it exists, add the value of parent index to the score
    if (value != -1) { (score += t); }
  }
}

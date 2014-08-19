
//////////////////////////////////////////////////////////////////////////////////////
// Scrabble

var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],
  ['G','D'],['C','M','P','B'],['F','H','W','V','Y'],['K'],[],[],['J','X'],[],
  ['Q','Z']];
var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];



///
/// first loop:
//////// second loop: loop through arrays for letter matches (index_of)
/////////// third loop:

/// JS //////
// var split = words.split("");


// by individual word
for (var wordIndex = 0; wordIndex < words.length; wordIndex++) {
  console.log(words[wordIndex]);
  var score = 0;
  var letters = words[wordIndex].split("");

  // by individual letter in that word
  for (var letterIndex = 0; letterIndex < letters.length; letterIndex++) {

    // by the index of that letter in SLV
    for (var slvIndex = 0; slvIndex < scrabbleLetterValues.length; slvIndex++) {

      // compare the index of that letter to SLV array indices
      if (scrabbleLetterValues[slvIndex].indexOf(letters[letterIndex].toUpperCase()) > -1) {

        // taking that value and adding it to score
        score += slvIndex;
      }
    }
  }
  // prints total score of this word
  console.log(score);
}
// after finishes one full loop (ex: watermelon), moves to next word in words array



//////////////////////////////////////////////////////// Ruby
def find_scrabble_value(word)
  var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],
    ['G','D'],['C','M','P','B'],['F','H','W','V','Y'],['K'],[],[],['J','X'],[],
    ['Q','Z']];
  var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];

  letter_array = word.split(//)

  scrabbleLettersValues do ||
  end

  letter_array.each do |letter|

  end
end

find_scrabble_value("watermelon")

//////////////////////////////////////////////////////////////////////////////////////

// Fibonacci Checker
// In a file, `fibonacciChecker.js`, write a program that will iterate over an array of numbers and determine whether each of the numbers is a Fibonacci number or not. Your program should print out a string for each number stating whether it is a Fibonacci number.

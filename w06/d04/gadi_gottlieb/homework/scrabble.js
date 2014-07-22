//Given the following arrays:
//```javascript
var scrabbleLetterValues = [
  [],
  ['A','E','I','U','N','R','S','L','O','T'], // 1 point
  ['G','D'], // 2 points
  ['C','M','P','B'], // 3 points
  ['F','H','W','V','Y'], // 4 points
  ['K'], // 5 points
  [],
  [],
  ['J','X'], // 8 points
  [],
  ['Q','Z'] // 10 points
];
var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];

for (var i = 0; i < words.length; i++) {
  var curWordLetters = words[i].split("");
  for (var i = 0; i < scrabbleLetterValues.length; i++) {

  var curLetterPoints =  scrabbleLetterValues[i].split()
  console.log(curLetterPoints)
  }
}
  for (var i = 0; i < scrabbleLetterValues.length; i++) {
    scrabbleLetterValues[i]
  }
}













//In a file, `scrabble.js`, write a program that will iterate over an array of strings and calculate the scrabble score for each of the strings. The final output should be an array containing the score value of each of the words. The expected score for 'watermelon' is `15`.

#### Fibonacci Checker
In a file, `fibonacciChecker.js`, write a program that will iterate over an array of numbers and determine whether each of the numbers is a Fibonacci number or not. Your program should print out a string for each number stating whether it is a Fibonacci number.

__PRO-TIP__: [Fibonacci Number - wikipedia](http://en.wikipedia.org/wiki/Fibonacci_number)

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
  ['Q','Z']
];

var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];

var computeScrabbleValue = function(original_word) {
  score = 0
  word = original_word.toUpperCase();
  for (var letter_index in word) {
//    console.log(word[letter_index])
    currentLetter = word[letter_index];
    for (var score_array_index in scrabbleLetterValues) {
  //    console.log(scrabbleLetterValues[score_array_index]);
      score_array = scrabbleLetterValues[score_array_index];
      if ( score_array.indexOf(currentLetter) > -1 )
      {
        score += score_array.indexOf(currentLetter);
//        console.log('yes' + score_array.indexOf(currentLetter));
        //console.log(score_array.indexOf(currentLetter) );
      }

    }
   //array.indexOf(value) > -1
  }
  console.log(original_word + ' ' + score );
};

for (var word_index in words){
  computeScrabbleValue(words[word_index]);
}

var nth_fib = function(x)  {
  if (x === 0) {
    return 0;
  } else if (x === 1) {
    return 1;
  } else {
    return nth_fib(x-1)+nth_fib(x-2);
  }
}

arr = [18, 34, 21, 8]
console.log('Array: ' + arr)
for ( var arr_index in arr ) {
  console.log(arr[arr_index]);
}

var isFib = function(x) {
  fibIndex = 0;
  currentFib = 0;
  while (x > currentFib) {
    currentFib    
    fibIndex++;
  }
}
console.log(nth_fib(10));










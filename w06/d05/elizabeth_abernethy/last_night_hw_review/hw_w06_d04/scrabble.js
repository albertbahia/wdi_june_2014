var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],['G','D'],
['C','M','P','B'],['F','H','W','V','Y'],['K'],[],[],['J','X'],[],['Q','Z']];

var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];


// --------------------------- MY WORK -------------------------
// by individual word
// for (var wordIndex = 0; wordIndex < words.length; wordIndex++) {
//   console.log(words[wordIndex]);
//   var score = 0;
//   var letters = words[wordIndex].split("");
//
//   // by individual letter in that word
//   for (var letterIndex = 0; letterIndex < letters.length; letterIndex++) {
//
//     // by the index of that letter in SLV
//     for (var slvIndex = 0; slvIndex < scrabbleLetterValues.length; slvIndex++) {
//
//       // compare the index of that letter to SLV array indices
//       if (scrabbleLetterValues[slvIndex].indexOf(letters[letterIndex].toUpperCase()) > -1) {
//         // taking that value and adding it to score
//         score += slvIndex;
//       }
//
//     }
//   }
//   // prints total score of this word
//   console.log(score);
// }

// after finishes one full loop (ex: watermelon), moves to next word in words array



// --------------------------- SOLUTION -------------------------


var finalScores = [];

for ( var i = 0; i < words.length; i++ ) {
  var tiles = words[i].split('');
  // watermelon => [w,a,t,e,r,m,e,l,o,n]
  var count = 0;
  for ( var j = 0; j < tiles.length; j++ ) {
    var tile = tiles[j].toUpperCase();
    // tile = 'W'
    for ( var k = 0; k < scrabbleLetterValues.length; k++ ) {

      if ( scrabbleLetterValues[k].indexOf( tile ) != -1 ) {
        count += k;
      }
    }
  }
  finalScores.push(count)
}

console.log(finalScores)

var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],['G','D'],['C','M','P','B'],['F','H','W','V','Y'],['K'],[],[],['J','X'],[],['Q','Z']];
// The index of each array represents the point values of the letters within

var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];
var finalScores = [];

for ( var i = 0; i < words.length; i++ ) {
  var tiles = words[i].split('');
  var count = 0;
  // split word into letters and set count to zero
  for ( var j = 0; j < tiles.length; j++ ) {
    var tile = tiles[j].toUpperCase();
    // start iterating over individual letters and capitalizing them
    for ( var k = 0; k < scrabbleLetterValues.length; k++ ) {
      // iterate over scrabbleLetterValues array checking if the letter exists
      if ( scrabbleLetterValues[k].indexOf( tile ) != -1 ){
        // if it exists add the index of the array to count
        count += k;
      }
    }
  }
  finalScores.push(count);
}
console.log(finalScores);
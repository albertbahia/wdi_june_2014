var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],['G','D'],['C','M','P','B'],['F','H','W','V','Y'],['K'],[],[],['J','X'],[],['Q','Z']];
var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];
var finalScores = [];

for ( var i = 0; i < words.length ; i++ ) {
  var tiles = words[i].split('');
  //[w,a,t,e,r,m,e,l,o,n]
  var count = 0;
  for ( var j = 0; j < tile.length; j++ ) {
    var tile = tiles[j].toUpperCase();
    // tile = 'W'
    for ( var k = 0; k < scrabbleLetterValues.length; k++ ) {
      if ( scrabbleLetterValues[k].indexOf( tile ) != -1 ){
        count += k;
      }
    }
  }
  finalScores.push(count)
}

console.log(finalScores)

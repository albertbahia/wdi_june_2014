var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],
                              ['G','D'],['C','M','P','B'],['F','H','W','V','Y'],
                              ['K'],[],[],['J','X'],[],['Q','Z']];

var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];
var score_array = [];

for (var i=0;i<words.length;i++){
  var word_score = 0;
  var word_letters = words[i].split("");
  for (var j=0;j<word_letters.length;j++){
    for (var k=0;k<scrabbleLetterValues.length;k++){
      if(scrabbleLetterValues[k].indexOf(word_letters[j].toUpperCase()) > -1){
        word_score += k
      }
    }
  }
  score_array.push(word_score)
}
console.log(score_array)

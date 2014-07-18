var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],['G','D'],['C','M','P','B'],['F','H','W','V','Y'],['K'],[],[],['J','X'],[],['Q','Z']];
var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];

var words_score = [0,0,0,0,0,0];
  for(z=0; z < scrabbleLetterValues.length; z++){
    for (x = 0; x < words.length; x++) {
      words[x] = words[x].toUpperCase();
      for(y=0; y < words[x].length; y++){
        if (scrabbleLetterValues[z].length > 0) {
          console.log(scrabbleLetterValues[z] + " "+ words[x][y]);
          if (scrabbleLetterValues[z].indexOf(words[x][y]) != -1) {
            words_score[x]+=z;
          }
        }
      }
    }
  }
  console.log(words_score);

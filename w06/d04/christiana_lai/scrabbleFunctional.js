function getLetterValue(letterTile){
  var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],['G','D'],['C','M','P','B'],['F','H','W','V','Y'],['K'],[],[],['J','X'],[],['Q','Z']];
  var tile = letterTile.toUpperCase();
  for ( var i = 0; i < scrabbleLetterValues.length; i++ ) {
    if ( scrabbleLetterValues[i].indexOf( tile ) != -1 ){
      return i;
    }
  }
}

function getWordValue(word){
  var splitWord = word.split('');
  var count = 0;
  for (var i = 0; i < splitWord.length; i++){
    count += getLetterValue(splitWord[i]);
  }
  return count;
}

function getScrabbleScores(words){
  var finalScores = [];
  for (var i = 0; i < words.length; i++){
    finalScores.push(getWordValue(words[i]));
  }
  console.log(finalScores);
}

  var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];
getScrabbleScores();

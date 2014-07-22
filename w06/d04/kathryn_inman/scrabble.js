//Write a program that will iterate over an array of strings and calculate the scrabble score for each of the strings. The final output should be an array containing the score value of each of the words. The expected score for 'watermelon' is 15.


var scrabbleLetterValues = [[],['A','E','I','U','N','R','S','L','O','T'],['G','D'],['C','M','P','B'],['F','H','W','V','Y'],['K'],[],[],['J','X'],[],['Q','Z']];
var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];

var finalScores = [];


for (var i = 0; i < words.length; i++) {
	 var tiles = (words[i].split(""));
	 var count = 0;
	 	for (var x = 0; x < tiles.length; x++) {
	 		var tile = tiles[x].toUpperCase();
	 		for (var k = 0; k < scrabbleLetterValues.length; k++) {
	 			if ( scrabbleLetterValues[k].indexOf( tile ) != -1) {
	 				count += k;
	 			}
	 		}	
	 	}
	 	finalScores.push( count )
}
console.log(finalScores)




// for (var b = 0; b < scrabbleLetterValues.length; b++) {
// 	for (var z = 0; z < scrabbleLetterValues[b].length; z++) {
// 		var letter_itself = scrabbleLetterValues[b][z];
// 		values_hashy_thing = {letter_itself: b};
// 		console.log (letter_itself);
// 	}
// }


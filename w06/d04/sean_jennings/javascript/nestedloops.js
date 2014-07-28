
//another_array = [[],["r"],["w"],["e"],[],["a"],["t"]]

//var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];


var letterInArray;

for (var i = 0; i < words.length; i++) {
    array = words[i].split("");
    console.log(array);
}

var words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];
var scrabbleLetterValues = [[],['A','E','I','U']];
var letterInArray;

words = ['watermelon','Juicy','Colorful','beautiful','eat','SWAG'];
var newArray = [];

for (var i = 0; i < words.length; i++) {
    newArray.push(words[i].split(""));

}





























var array = [1,2,3];
var array2 = [5,4,6,7,2,8,3];
var emptyArray = [];
var NewArray = [];

for (var i = 0; i < array.length; i++) {
  arrayValue = array[i];

  for (var j = 0; j < array2.length; j++) {
    array2Value = array2[j];

    if (arrayValue == array2Value) {

        newArray = emptyArray.push(arrayValue);
        console.log(newArray);
        return newArray;
    }
    else {
      console.log("no matching values")
    }
  }

}

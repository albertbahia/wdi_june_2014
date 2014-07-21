// -- accept 2 args (array of values, 'callback' function to run)
// -- each element should be passed into 'callback' & result stored in new array
// -- function should return new array
// -- original array should remain intact

var mapStrings = ['a','b','c','d'];

var myMap = function(array, callbackfxn) {
  var catchArray = [];
  for (var index = 0; index < array.length; index++) {
    var functioned = (callbackfxn(array[index]));
    catchArray.push(functioned);
  }
  return catchArray;
};

// -- CALLBACK FUNCTIONS
var mapCapitalize = function(letter){
  return letter.toUpperCase();
};

var addPrefix = function(element) {
  var prefix = "Letter: ";
  return (prefix + element);
};

// -- RESULTS
var answerMap = myMap(mapStrings, mapCapitalize);
var answerMap2 = myMap(mapStrings, addPrefix);

console.log(answerMap);
console.log(answerMap2);

// -- MAKE SURE ORIGINAL ARRAY IS INTACT
console.log(mapStrings);

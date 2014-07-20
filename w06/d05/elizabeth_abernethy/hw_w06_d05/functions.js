// ------------------------------ SAMPLES ------------------------------


// numbers = [1, 2, 3, 4];
// strings = ['a','b','c','d'];

// var capitalize = function(val){
//   return val.toUpperCase();
// };

// functions for Reduce

// var add = function(initial, next){
//   return initial + next;
// };
//
// var multiply = function(initial, next){
//   return initial * next;
// }




///////////////////////////////////
//              MAP              // --------------------------------------------------------------
///////////////////////////////////

// -- accept 2 args (array of values, 'callback' function to run)
// -- each element should be passed into 'callback' & result stored in new array
// -- function should return new array
// -- original array should remain intact

// var mapStrings = ['a','b','c','d'];
//
// var myMap = function(array, callbackfxn) {
//   var catchArray = [];
//   for (var index = 0; index < array.length; index++) {
//     var functioned = (callbackfxn(array[index]));
//     catchArray.push(functioned);
//   }
//   return catchArray;
// };

// -- CALLBACK FUNCTIONS
// var mapCapitalize = function(letter){
//   return letter.toUpperCase();
// };
//
// var addPrefix = function(element) {
//   var prefix = "Letter: ";
//   return (prefix + element);
// };

// -- RESULTS
// var answerMap = myMap(mapStrings, mapCapitalize);
// var answerMap2 = myMap(mapStrings, addPrefix);
//
// console.log(answerMap);
// console.log(answerMap2);

// -- MAKE SURE ORIGINAL ARRAY IS INTACT
// console.log(mapStrings);



///////////////////////////////////
//            INCLUDE            // --------------------------------------------------------------
///////////////////////////////////

// -- accepts 2 args (array of values, a value to check for)
// -- if value is present in array, function should return true
// -- if value is not present in array, function should return false
// -- original array should remain intact

var includeStrings = ['a','b','c','d'];
var includeNumbers = [1, 2, 3, 4];

var myInclude = function(arrayOfValues, valueToCheckFor) {
  for (var arrayIndex = 0; arrayIndex < arrayOfValues.length; arrayIndex++) {
    if (arrayOfValues.indexOf(valueToCheckFor) > -1 ) {
      return true;
    } else {
      return false;
    }
  }
};

var answerInclude = myInclude(includeStrings, 'c');
console.log(answerInclude);
// true

var answerInclude2 = myInclude(includeStrings, 'e');
console.log(answerInclude2);
// false

var answerInclude3 = myInclude(includeStrings, 3);
console.log(answerInclude3);
// false

var answerInclude4 = myInclude(includeNumbers, 4);
console.log(answerInclude4);
// true


////////////////////////////////////
//             SELECT             // --------------------------------------------------------------
////////////////////////////////////

// -- accepts 2 args (array of values, 'callback' function to run)
// -- 'callback' function accept 1 param & return T / F based on condition within
// -- new array should be returned from function w/ values for which 'callback' returned T
// -- original array should remain intact


////////////////////////////////////
//             REJECT             // --------------------------------------------------------------
////////////////////////////////////

// -- accept 2 args (array of values, 'callback function to run')
// -- 'callback' accept 1 param & return T/F based on conditions w/in function
// -- new array should be returned from the function w/ values which 'callback' returned F
// -- original array should remain intact


////////////////////////////////////
//             REDUCE             // --------------------------------------------------------------
////////////////////////////////////

// -- ( +, -, *, / )
// -- accept 2 args (array of numbers, 'callback' function to run)
// -- 'callback' function perform one of four basic math operations
// -- 'callback' should accept 2 args
// -- final value should be returned
// -- original array remains intact


////////////////////////////////////
//             SAMPLE             // --------------------------------------------------------------
////////////////////////////////////

// -- should accept 1 OR 2 args (array of values, sample size *optional)
// -- if no sample size given, then return randomly selected single value
// -- if sample size is given: select values from original array, return new array w/ selected values
// -- NO DUPS should be returned unless there are duplicates in the original array
// -- original array should remain intact

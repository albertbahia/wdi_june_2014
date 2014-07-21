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

//// -- CALLBACK FUNCTIONS
// var mapCapitalize = function(letter){
//   return letter.toUpperCase();
// };
//
// var addPrefix = function(element) {
//   var prefix = "Letter: ";
//   return (prefix + element);
// };

//// -- RESULTS
// var answerMap = myMap(mapStrings, mapCapitalize);
// var answerMap2 = myMap(mapStrings, addPrefix);
//
// console.log(answerMap);
// console.log(answerMap2);


///////////////////////////////////
//            INCLUDE            // --------------------------------------------------------------
///////////////////////////////////

// var includeStrings = ['a','b','c','d'];
// var includeNumbers = [1, 2, 3, 4];
//
// var myInclude = function(arrayOfValues, valueToCheckFor) {
//   for (var arrayIndex = 0; arrayIndex < arrayOfValues.length; arrayIndex++) {
//     if (arrayOfValues.indexOf(valueToCheckFor) > -1 ) {
//       return true;
//     } else {
//       return false;
//     }
//   }
// };
//
// var answerInclude = myInclude(includeStrings, 'c');
// console.log(answerInclude);
// // true
//
// var answerInclude2 = myInclude(includeStrings, 'e');
// console.log(answerInclude2);
// // false
//
// var answerInclude3 = myInclude(includeStrings, 3);
// console.log(answerInclude3);
// // false
//
// var answerInclude4 = myInclude(includeNumbers, 4);
// console.log(answerInclude4);
// // true


////////////////////////////////////
//             SELECT             // --------------------------------------------------------------
////////////////////////////////////

// var selectNumbers = [1, 2, 3, 4];
//
// var mySelect = function(arrayOfValues, callbackFxn) {
//   var catchArray = [];
//
//   for (var index = 0; index < arrayOfValues.length; index++) {
//     if ((callbackFxn(arrayOfValues[index])) === true ) {
//       var catchValue = (arrayOfValues[index]);
//       catchArray.push(catchValue);
//     }
//   }
//   return catchArray;
// };
//
//
// var findEvens = function(value) {
//   if (((value) % 2) === 0) {
//     return true;
//   } else {
//   return false;
//   }
// };
//
// var findOdds = function(value) {
//   if (((value) % 2) != 0) {
//     return true;
//   } else {
//   return false;
//   }
// };
//
// // -- RESULTS
// var answerSelect = mySelect(selectNumbers, findEvens);
// var answerSelect2 = mySelect(selectNumbers, findOdds);
//
// console.log(answerSelect);
// console.log(answerSelect2);


////////////////////////////////////
//             REJECT             // --------------------------------------------------------------
////////////////////////////////////

// var rejectNumbers = [1, 2, 3, 4];
//
// var myReject = function(arrayOfValues, callbackFxn) {
//   catchArray = [];
//
//   for (var index = 0; index < arrayOfValues.length; index++) {
//     if ((callbackFxn(arrayOfValues[index])) === false ) {
//       var catchValue = (arrayOfValues[index]);
//       catchArray.push(catchValue);
//     }
//   }
//   return catchArray;
// };
//
// // -- CALLBACK FUNCTIONS
// var rejectEvens = function(value) {
//   if (((value) % 2) === 0 ) {
//     return true;
//   } else {
//     return false;
//   }
// };
//
// var rejectOdds = function(value) {
//   if (((value) % 2 ) != 0 ) {
//     return true;
//   } else {
//     return false;
//   }
// };
//
// // -- RESULTS
//
// var answerReject = myReject(rejectNumbers, rejectEvens); // => [1, 3]
// var answerReject2 = myReject(rejectNumbers, rejectOdds); // => [2, 4]
//
// console.log(answerReject);
// console.log(answerReject2);


////////////////////////////////////
//             REDUCE             // --------------------------------------------------------------
////////////////////////////////////


// var reduceNumbers = [1, 2, 3, 4];
//
// var myReduce = function(arrayOfNumbers, callbackFxn) {
//   var catchArray = [];
//   var total = arrayOfNumbers[0];
//   var counter = 0;
//   for (var index = 1; index < arrayOfNumbers.length; index++) {
//     total = callbackFxn(total, arrayOfNumbers[index]);
//     catchArray.push(total);
//     var finalAnswer = catchArray.pop();
//     counter++;
//   }
//   return finalAnswer;
// };
//
// var add = function(previous, current) {
//   return previous + current;
// };
//
// var subtract = function(previous, current) {
//   return previous - current;
// };
//
// var multiply = function(previous, current) {
//   return previous * current;
// };
//
// var divide = function(previous, current) {
//   return previous / current;
// };
//
// var reduceAnswer1 = myReduce(reduceNumbers, add); // => 10
// var reduceAnswer2 = myReduce(reduceNumbers, subtract); // => -8
// var reduceAnswer3 = myReduce(reduceNumbers, multiply); // => 24
// var reduceAnswer4 = myReduce(reduceNumbers, divide); // => 0.0416
//
//
// console.log(reduceAnswer1);
// console.log(reduceAnswer2);
// console.log(reduceAnswer3);
// console.log(reduceAnswer4);




////////////////////////////////////
//             SAMPLE             // --------------------------------------------------------------
////////////////////////////////////

// -- if no sample size given, then return randomly selected single value
// -- if sample size is given: select values from original array, return new array w/ selected values
// -- NO DUPS should be returned unless there are duplicates in the original array
// -- original array should remain intact

var sampleNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

var mySample = function(array, sampleSize) {
  var catchArray = [];
  if (sampleSize === undefined) {
    var randomValue = array[Math.floor(array.length * Math.random())];
    catchArray.push(randomValue);
    return catchArray;
  } else if ( sampleSize > 1 ) {
    for (var i = array.length; i > 0; i--) {
      sampleNumbers.sort(function() { return 0.5 - Math.random() });
      var random = Math.floor(Math.random() * ( i + 1 ));
    }
    return array.slice(i, sampleSize);
  }
};


// test cases
var sample1 = mySample(sampleNumbers);
var sample2 = mySample(sampleNumbers, 4);
var sample3 = mySample(sampleNumbers, 3);
var sample4 = mySample(sampleNumbers, 7);
var sample5 = mySample(sampleNumbers, 2);

console.log(sample1);
console.log(sample2);
console.log(sample3);
console.log(sample4);
console.log(sample5);

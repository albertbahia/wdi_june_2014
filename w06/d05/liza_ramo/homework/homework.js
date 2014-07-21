// Sample callbacks and arrays
numbers = [1, 2, 3, 4];
strings = ['a','b','c','d'];

var capitalize = function(val){
  return val.toUpperCase();
};

// functions for Reduce

var add = function(initial, next) {
  return initial + next;
};

var multiply = function(initial, next) {
  return initial * next;
};

////////////////////// HOMEWORK ///////////////////////////////////////


///////////////////////////////////////
//////        Map                 /////
///////////////////////////////////////

var map = function(arr, fxn) {
  new_arr = []
  for (var i = 0; i < arr.length; i++) {
    new_arr.push(fxn(arr[i]))
  }
  return new_arr
};

var answer1 = map(strings, capitalize)
console.log(answer1);

///////////////////////////////////////
//////        Include             /////
///////////////////////////////////////

var include = function(arr, val) {
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] === val) {
      return true;
    } else {
      return false;
    }
  }
};

var answer1 = include(strings, 'a');
var answer2 = include(strings, 'z');
console.log(answer1);
console.log(answer2);


///////////////////////////////////////
//////        Select              /////
///////////////////////////////////////

var myName = "Liza Ramo";

// Checks if string is more than 4 chars long:
var moreThanFour = function(string) {
  if (string.length > 4) {
    return true;
  }
  else {
    return false;
  }
};

var answer1 = moreThanFour(myName);
console.log(answer1);

myStrings = ["Liza", "Hayes", "Ramo", "The Third"];

// Performs a fxn on each el in an array
// Any el that evaluates to true pushes into new_arr
var select = function(array, fxn) {
  new_arr = []
  for (var i = 0; i < array.length; i++) {
    if (fxn(array[i]) === true) {
      new_arr.push(array[i]);
    }
    else {
    }
  } return new_arr;
};

var answer2 = select(myStrings, moreThanFour);
console.log(answer2);

///////////////////////////////////////
//////        Reject              /////
///////////////////////////////////////

var myName = "Liza Ramo";

// Checks if string is more than 4 chars long:
var moreThanFour = function(string) {
  if (string.length > 4) {
    return true;
  }
  else {
    return false;
  }
};

var answer1 = moreThanFour(myName);
console.log(answer1);

myStrings = ["Liza", "Hayes", "Ramo", "The Third"];

// Performs a fxn on each el in an array
// Any el that evaluates to true pushes into new_arr
var select = function(array, fxn) {
  new_arr = []
  for (var i = 0; i < array.length; i++) {
    if (fxn(array[i]) === false) {
      new_arr.push(array[i]);
    }
    else {
    }
  } return new_arr;
};

var answer2 = select(myStrings, moreThanFour);
console.log(answer2);

///////////////////////////////////////
//////        Reduce              /////
///////////////////////////////////////

var add = function (initial, next) {
  return initial + next;
};

var subtract = function (initial, next) {
  return initial - next;
};

var multiply = function (initial, next) {
  return initial * next;
};

var divide = function (initial, next) {
  return initial / next;
};


var answer1 = add(3, 5);
console.log(answer1);

numbers = [1, 2, 3, 4];

var myReduce = function(arrayOfNumbers, callbackFxn) {
  var catchArray = [];
  var total = arrayOfNumbers[0];
  var counter = 0;
  for (var index = 1; index < arrayOfNumbers.length; index++) {
    total = callbackFxn(total, arrayOfNumbers[index]);
    catchArray.push(total);
    var finalAnswer = catchArray.pop();
    counter++;
  }
  return finalAnswer;
};

// -- RESULTS

var reduceAnswer1 = myReduce(numbers, add);
// add: ( 1 + 2 ) => ( 3 + 3 ) => ( 6 + 4 ) => 10

var reduceAnswer2 = myReduce(numbers, subtract);
// subtract: ( 1 - 2 ) => ( -1 - 3 ) => ( -4 - 4 ) => -8

var reduceAnswer3 = myReduce(numbers, multiply);
// multiply: ( 1 x 2 ) => ( 2 x 3 ) => ( 6 x 4 ) => 24

var reduceAnswer4 = myReduce(numbers, divide);
// divide: ( 1 / 2 ) => ( 0.5 / 3 ) => ( 0.167 / 4 ) => 0.04166675

console.log(reduceAnswer1);
console.log(reduceAnswer2);
console.log(reduceAnswer3);
console.log(reduceAnswer4);

///////////////////////////////////////
//////        Sample              /////
///////////////////////////////////////

numbers = [1, 2, 3, 4];

var sample = function(arr, sampleSize){
  sample = [];

  sample.push(arr.Math.random);
  return sample;
};

var answer1 = sample(numbers, 2)
console.log(answer1);











//

// Map
//
// This function should accept two arguments
// an array of values
// a 'callback' function to run
// each element of the array should be passed into the 'callback' function and the result should be stored in a new array
// The function should return the new array.
// The original array should remain intact

// Include
//
// This function should accept two arguments
// an array of values
// a value to check for
// If the value to check for is present in the array then the function should return true
// If the value to check for is not present in the array then the function should return false.
// The original array should remain intact

// Select
//
// This function should accept two arguments
// an array of values
// a 'callback' function to run
// The callback function should accept a single parameter and return true or false based on whatever condition is defined within that function
// An new array should be returned from the function with the values for which the callback returned true
// The original array should remain intact

// Reject
//
// This function should accept two arguments
// an array of values
// a 'callback' function to run
// The callback function should accept a single parameter and return true or false based on whatever condition is defined within that function
// An new array should be returned from the function with the values for which the callback returned false
// The original array should remain intact
// Reduce (+, -, *, /)
//
// This function should accept two arguments
// an array of numbers
// a 'callback' function to run
// The 'callback' function should perform one of the four basic math operations like reduce works in ruby
// it should accept two arguments
// The final value should be returned
// The original array should remain intact
// Sample
//
// This function should accept one OR two arguments
// an array of values
// a sample size (optional)
// If no sample size is given then a single value, randomly selected from the array should be returned
// If a sample size is given
// select random values from the original array
// an array containing the randomly selected values should be returned
// no duplicate values should be returned UNLESS there are duplicates in the original array
// The original array should remain intact
numbers = [1, 2, 3, 4];
strings = ['a','b','c','d'];

var capitalize = function(val){
  return val.toUpperCase();
};

// functions for Reduce

var add = function(initial, next){
  return initial + next;
};

var multiply = function(initial, next){
  return initial * next;
}


var map = function(fxn, arr) {
  var newArray = [];
  for (var i in arr) {
    newArray.push(fxn(arr[i]));
  }
  return new_array;
};

var include = function(arr, value) {
  for (var i = 0; i < arr.length; i++) {
    if ( arr.indexOf(value) != -1 ){
      return true;
    } else {
      return false;
    }
  }
};

include(numbers, 3);

var isEven = function(n) {
   return (n % 2 == 0);
};

var select = function(fxn, arr) {
  newArray = [];
  for (var i = 0; i < arr.length; i++) {
    if ( fxn(arr[i]) ) {
      newArray.push(arr[i]);
    }
  }
  return newArray;
};

var reject = function(fxn, arr) {
  newArray = [];
  for (var i = 0; i < arr.length; i++) {
    if ( fxn(arr[i]) === false ) {
      newArray.push(arr[i]);
    }
  }
  return newArray;
};



var times = function(a, b) {
  var product = a;
  for (var i = 1; i < b; i++) {
    product += a;
  }
  return product;
};

var add = function(initial, next){
  return initial + next;
};


var reduce = function(fxn, arr) {
  var value = arr[0]
  for (var i = 1; i < arr.length; i++ ) {
    value = fxn(value, arr[i]);
  }
  return value;
};


var rand = function(arr) {
  var index = Math.floor(Math.random() * arr.length);
  return arr[index]
};


var sample = function(arr, size) {
  var newArray = []
  if (size === undefined) {
    newArray.push(rand(arr))
  }
  else {
    do {
      var temp = rand(arr);
      if (newArray.indexOf(temp) != -1) {
        newArray.push(temp);
      }
    } while (newArray.length < size)
  }
  return newArray;
};

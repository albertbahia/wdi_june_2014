// This function should accept two arguments, an array of numbers and a 'callback'
// function to run The 'callback' function should perform one of the four basic
// math operations like reduce works in ruby it should accept two arguments
// The final value should be returned The original array should remain intact
var add = function(initial, next){
  return initial + next;
};

var multiply = function(initial, next){
  return initial * next;
}

var numbers = [1, 2, 3, 4];

var reduce = function(fxn, arr){
  var value = arr[0];
  for (var i = 1; i < arr.length; i++){
    value = fxn(value, arr[i])
  }
  return value;
}

reduce(add, numbers);
reduce(multiply, numbers);

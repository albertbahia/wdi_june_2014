// -- ( +, -, *, / )
// -- accept 2 args (array of numbers, 'callback' function to run)
// -- 'callback' function perform one of four basic math operations
// -- 'callback' should accept 2 args
// -- final value should be returned
// -- original array remains intact


var reduceNumbers = [1, 2, 3, 4];

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


// -- CALLBACK FUNCTIONS

var add = function(previous, current) {
  return previous + current;
};

var subtract = function(previous, current) {
  return previous - current;
};

var multiply = function(previous, current) {
  return previous * current;
};

var divide = function(previous, current) {
  return previous / current;
};


// -- RESULTS

var reduceAnswer1 = myReduce(reduceNumbers, add);
// add: ( 1 + 2 ) => ( 3 + 3 ) => ( 6 + 4 ) => 10

var reduceAnswer2 = myReduce(reduceNumbers, subtract);
// subtract: ( 1 - 2 ) => ( -1 - 3 ) => ( -4 - 4 ) => -8

var reduceAnswer3 = myReduce(reduceNumbers, multiply);
// multiply: ( 1 x 2 ) => ( 2 x 3 ) => ( 6 x 4 ) => 24

var reduceAnswer4 = myReduce(reduceNumbers, divide);
// divide: ( 1 / 2 ) => ( 0.5 / 3 ) => ( 0.167 / 4 ) => 0.04166675


console.log(reduceAnswer1);
console.log(reduceAnswer2);
console.log(reduceAnswer3);
console.log(reduceAnswer4);

// -- MAKE SURE ORIGINAL ARRAY IS INTACT
console.log(reduceNumbers);

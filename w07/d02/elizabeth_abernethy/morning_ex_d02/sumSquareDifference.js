
// Step 1 - Find SUM of SQUARES of first 100 natural numbers
// Ex: (1^2 + 2^2 + ... + 10^2 ) = 385

// Step 2 - Find the SQUARE of the SUM
// Ex: (1 + 2 + ... + 10)^2 = 55^2 = 3025

// Step 3 - Find the difference between these two
// Ex: 3025 - 385 = 2640

// ------------------------------- MY ANSWER -------------------------------


// CREATE ARRAY [ 1 .. 100 ]

var lowEnd = 1;
var highEnd = 100;
var numArray = [];
while(lowEnd <= highEnd ) {
  numArray.push(lowEnd++);
}

// SQUARE ALL NUMBERS IN THE ARRAY

var squareAll = function(array, fxn) {
  var counter = 0;
  squaredArray = [];
  for (var i = 0; i < array.length; i++) {
    var squared = fxn(array[i]);
    squaredArray.push(squared);
  }
  return squaredArray;
};

var square = function(num) {
  return Math.pow(num, 2);
};

var allSquared = squareAll(numArray, square);
console.log(allSquared);


// ADD ALL SQUARES TOGETHER

var sumSquares = function(array, fxn) {
  var counter = 0;
  sumSquares = [];
  total = array[0];
  for (var i = 1; i < array.length; i++) {
    total = fxn(total, array[i]);
    sumSquares.push(total);
    var answer = sumSquares.pop();
    counter++;
  }
  return answer;
};

var sum = function(previous, current) {
  return previous + current;
};

var sumAllSquares = sumSquares(allSquared, sum);
console.log(sumAllSquares);



// sumAllSquares = 338,350



var sumAllNums = function(array, fxn) {
  var counter = 0;
  sumAll = [];
  total = array[0];
  for (var i = 1; i < array.length; i++) {
    total = fxn(total, array[i]);
    sumAll.push(total);
    var answer = sumAll.pop();
    counter++;
  }
  return answer;
};

var sumAll = sumAllNums(numArray, sum);
console.log(sumAll);

var sumAllSquared = Math.pow(sumAll, 2);
console.log(sumAllSquared);

// sumAllSquared = 25502500


var finalAnswer = console.log(sumAllSquared - sumAllSquares);





// ---------------------- ANSWERS (Sean Talia) -------------------------


function sumOfSquares(n) {
  return (n*(n+1)*(2*n+1) / 6 )
};

function squareOfSum(n) {
  var sum = 0;
  for (var int = 1; int <= n; int++) {
    sum += int;
  };
  return sum*sum;
}

console.log(squareOfSum(100) - sumOfSquares(100));


// ---------------------- ANSWERS (McKenneth) -------------------------

function sumSquareDifference(limit) {
  var sumOfSquares = 0;
  var squareOfSums = 0;

  for (var i = 1; i <= limit; i++) {
    sumOfSquares += Math.pow(i, 2);
    squareOfSums += i;
  }
  return Math.pow(squareOfSums, 2) - sumOfSquares;
}

console.log(sumSquareDifference(100));

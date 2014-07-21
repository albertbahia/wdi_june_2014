

// A named function:
function hello(message) {
  console.log("Hello, " + message);
}

hello("welcome.");
hello("this is dog.")

// An anonymous function stored in a var:

var yo = function () {
  console.log("Yo")
};

yo();

// Must explicitly state returns in JS:
var add = function (a, b) {
  return a + b;
};

var answer = add(3, 5);
console.log(answer);

// Typically do either/or. Typically don't name anonymous functions, but can.

// Exercises:
// * Write a function to accept three numbers and return their product.
// * Write a function to accept an age and returns
//   * true if you can drink
//   * false if you cannot drink
// * Write a function to accept an array and print the elements in order


// * Write a function to accept three numbers and return their product.
function multiply(a, b, c) {
  return (a * b * c);
}

var answer1 = multiply(1,1,1);
var answer2 = multiply(2,2,2);

console.log(answer1);
console.log(answer2);


// * Write a function to accept an age and returns
//   * true if you can drink
//   * false if you cannot drink
function legal(age) {
  if (age >= 21) {
    return true;
  } else {
    return false;
  }
}

var age1 = legal(22);
var age2 = legal(19);

console.log(age1);
console.log(age2);


// * Write a function to accept an array and print the elements in order
function printer(arr) {
  for(var index = 0; index < arr.length; index++) {
    console.log(arr[index]);
  }
}

printer([5, 4, 3, 2, 1]);
printer([4, 18, 3, 25]);


/////////////////////////////////////////////////////////////////////

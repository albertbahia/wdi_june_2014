// Named function
// function hello(message) {
//   console.log("Hi there. " + message);
// }
//
// hello("Welcome to Jackass.");
// hello("This is sparta");
// hello("This is dog");

// when we define anonymous functions, we can store them in a variable
// var yo = function() {
//   console.log("Yo");
// };
//
// yo();

// No implicit returns in JS, 'return' on Line 19 is required.
// var add = function(a, b) {
//   return a + b;
// };
//
// var answer = add(3, 5);
// console.log(answer);

// function product(a, b, c) {
//   return a * b * c;
// };
//
// var answer = product(10, 20, 30);
// console.log(answer);

// function canYouDrink(age) {
//   if (age >= 21) {
//     return true;
//   } else if (age < 21) {
//     return false;
//   }
// }
//
// var answer = canYouDrink(21);
// console.log(answer);


function printer(arr) {
  for(var index = 0; index < arr.length; index++) {
    console.log(arr[index]);
  }
}

myArray = [4, 2, 5, 49, 33]
var answer = printer(myArray)
console.log(answer)

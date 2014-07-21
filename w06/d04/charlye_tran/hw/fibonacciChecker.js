// In a file, fibonacciChecker.js, write a program that will iterate over an array
// of numbers and determine whether each of the numbers is a Fibonacci number or
// not. Your program should print out a string for each number stating whether it
// is a Fibonacci number.
numbers = [1,2,3,4,5,6]
fibs = []
f1 = 1
f2 = 1
//Fibonacci checker
for (i = 0; i < numbers.length; i++){
  fibs.push(f1+f2);
  f2 = f2 + f1
  f1 = f2 - f1
}
//iterate through the numbers
for (i = 0; i < numbers.length; i++){
  //iterate through the fibs array
  for (n = 0; n < fibs; n++){
    //if the number exists in the fibs array....
    if (fibs.indexOf(numbers[n]) != -1){
      console.log(numbers[n] + "is a Fibonacci number!");
    //if the number doesn't exist
    } else if (fibs.indexOf(numbers[n]) == -1){
      console.log(numbers[n] + "is NOT a Fibonacci number!");
    }
  }
}

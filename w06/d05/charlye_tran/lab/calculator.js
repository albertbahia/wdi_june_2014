
//write a function that will accept two parameters and return the result of
//performing subtraction on those two values.
function subtract(a, b){
  return (a-b);
}

console.log(subtract(3, 2));

//write a function that will accept two parameters and return the result of
//performing multiplication on those two values.
function times(a, b){
  var sum = 0;
  for (var i = 0; i < b; i++){
    sum += a;
  }
  return sum;
}
console.log(times(3, 2));
console.log(times(2, 5));

//write a function that will accept two parameters and perform integer division
//on those two numbers, i.e. divideBy(5, 4) should return 1, divideBy(5, 22) should return 0
function divided(a, b){
  if (a > b){
    var remainder = a - b;
    while (remainder >= b){
      remainder -= b;
    }
    return remainder;
  }
  else {
    return 0;
  }
}

divided(5,4);
divided(5, 22);
divided(14, 3);

//write a function that will accept a single parameter, a number, and will
//return the factorial result of that number
function factorial(a){
  var multiple = 1;
   for (var i = 1; i <= a; i++) {
     multiple = times(multiple, i);
   }
  return multiple;
}
factorial(5);
factorial(7);

//write a function that will accept two parameters (a base and an exponent)
//and will return the result of raising the base to the exponent.
function power(a, b){
  var multiple = 1
  for (var i = 1; i <= b; i++){
    multiple = times(multiple, a);
  }
  return multiple;
}
power(2, 3);
power(2, 4);
power(3, 3);

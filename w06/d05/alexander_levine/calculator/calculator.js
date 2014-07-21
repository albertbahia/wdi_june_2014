// Subtract
function subtract(num1, num2) {
  var difference = num1 - num2;
  return difference;
}

// Multiply
function multiply(num1, num2) {
  var product = 0;
  for (var i = 0; i < num2; i++) {
    product += num1;
  }
  return product;
}

// Divide
function divide(num1, num2) {
  var quotient = 0;
  for (var i = 0; num1 >= num2; i++) {
    num1 -= num2;
  }
  quotient = i;
  return quotient;
}

// Factorial
function factorial(num) {
  var factorialArray = [];
  var factorial = 0
  for (var i = 0; num > 0; i++) {
    factorialArray.push(num);
    num--
  }
  var factorial = factorialArray[0];
  for (var i = 0; i + 1 < factorialArray.length; i++) {
    factorial = multiply(factorial, factorialArray[ i + 1]);
  }
  return factorial;
}

// Power
function power(base, exponent) {
  var power = base;
  for (var i = 0; i + 1 < exponent; i++) {
    power = multiply(power, base);
  }
  return power;
}

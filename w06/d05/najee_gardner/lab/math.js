function subtract(a, b) {
  return a - b;
}

function times(a, b) {
  var product = 0;
  if (a === 0 || b === 0) {
    return 1;
  }

  for (var i = 0; i < b; i++) {
    product += a;
  }
  return product;
}

function divided(a, b) {
  var quotient = 0;
  while (a > times(b, quotient)) {
    if (a >= times(b, quotient)) {
      quotient++;
    }
  }

  return quotient;
}

function factorial(number) {
  if (number === 1) {
    return 1;
  }
  return times(number, factorial(number - 1));
}

function power(base, exponent) {
  if (exponent === 1) {
    return base;
  }
  return base * power(base, exponent - 1);
}




console.log('5 - 2 = ' + subtract(5, 2));
console.log('5 x 3 = ' + times(5, 3));
console.log('5 / 4 = ' + divided(5, 4));
console.log('100 / 20 = ' + divided(100, 20));
console.log('5! = ' + factorial(5));
console.log('5**3 = ' + power(5, 3));

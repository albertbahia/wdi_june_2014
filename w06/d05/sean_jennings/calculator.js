function subtract (minuend,subtrahend) {

  if (minuend > subtrahend) {

    return (minuend - subtrahend);

  } else {

    return false;
  }

}
var answer = subtract(40,27);
console.log(answer);



function multiply (num1,num2) {
  product = 0;
  for (var i = num2; num2 > 0; num2--) {
    product = product + num1;
  }
  return product;
}
var product = multiply(5,4);

console.log(product);

function divideBy (numerator,denominator) {
  quotient = 0;
  for (var i = 0 ; numerator >= denominator; i++) {
    numerator = (numerator - denominator);
    quotient ++;
  }
return quotient;
}

var quotient = divideBy(50,45);
console.log(quotient);

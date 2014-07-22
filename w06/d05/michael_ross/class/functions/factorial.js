var multiply = function(n1, n2) {
  var product = 0
    for (var i = 0; i < n2; i++) {
      product += n1
    }
  return(product);
};

var factorial = function(number) {
  var product = 1;
  var counter = number;
  for (var i = 0; i < number; i++) {
    if (counter >= 1) {
      var multiplication = multiply(product, counter);
      product = multiplication;
      counter -= 1;
    }
  }
  return product;
};

var ans1 = factorial(4);
var ans2 = factorial(7);
var ans3 = factorial(0);

console.log(ans1);
console.log(ans2);
console.log(ans3);


var multiply = function(num1, num2) {
  var total = 0;
  for (var i = 0; i < num2; i++){
    total += num1;
  }
  return (total);
};

var factorial = function(number){
  var product = 1;
  var counter = number;
  for (var i = 0; i < number; i++){
    if (counter >= 1 ) {
    var multiplication = multiply(product, counter);
    product = multiplication;
    counter -= 1; 
    }
  }
  return product;
};

var answer1 = factorial(4);
console.log(answer1);

var answer2 = factorial(5);
console.log(answer2);


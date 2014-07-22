var multiply = function(initial, next){
  return initial * next;
};

var power = function(base, exponent) {
  counter = base;
  for (var i = 1; i < exponent; i++) {
    counter = multiply(counter, base);
  }
  return counter;
};

var ans1 = power(5,2);
var ans2 = power(10, 3);
console.log(ans1);
console.log(ans2);

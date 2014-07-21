var add = function(num1, num2) {
  return num1 + num2;
};

var subtract = function(num1, num2) {
  return num1 - num2;
};

var multiply = function(num1, num2) {
  return num1 * num2;
};

var divide = function(num1, num2){
  return num1 / num2;
};

var reduce = function(array, callback) {
  var total = array[0];
  for (var i = 1; i < array.length; i++) {
    total = callback(total, array[i])
  }
  return total;
};

numbers = [12, 6];
console.log(reduce(numbers, add));
console.log(reduce(numbers, subtract));
console.log(reduce(numbers, multiply));
console.log(reduce(numbers, divide));
console.log(numbers);

function reduce(array, callback) {
  // var result = array[0];
  // for (var i = 1; i < array.length; i++) {
  //   result = callback(result, array[i]);
  // }
  // return result;

  // recursive (doesn't work for subtr)
  var tempArray = array.slice(0);
  var result = tempArray.pop();

  if (tempArray.length === 1) {
    return callback(tempArray[0], result)
  }

  return callback(reduce(tempArray, callback), result);
}

var add = function(a, b) {
  return a + b;
};

var subtract = function(a, b) {
  return a - b;
};

var multiply = function(a, b) {
  return a * b;
};

var divide = function(a, b) {
  return a / b;
};

var numbers = [100, 5, 2, 1];

console.log('added: ' + reduce(numbers, add));
console.log('subtracted: ' + reduce(numbers, subtract));
console.log('multiplied: ' + reduce(numbers, multiply));
console.log('divided: ' + reduce(numbers, divide));

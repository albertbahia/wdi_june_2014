var select = function(array, callback) {
  var result = [];
  for (var i = 0; i < array.length; i++) {
    if (callback(array[i])) {
      result.push(array[i]);
    }
  }
  return result;
};

var lessThanSix = function(element) {
  return element < 6;
};

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
console.log(select(numbers, lessThanSix));
console.log(numbers)
var reject = function(array, callback) {
  var newArr = [];
  for (var i = 0; i < array.length; i++) {
    if (!callback(array[i])) {
      newArr.push(array[i]);
    }
  }
  return newArr;
};

var greaterThanSeven = function(element) {
  return element > 7;
}

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 100];

console.log(numbers);
console.log(reject(numbers, greaterThanSeven));

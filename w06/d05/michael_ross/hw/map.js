var map = function(fxn, array) {
  var newArr = [];
  for (var i = 0; i < array.length; i++) {
    newArr.push(fxn(array[i]));
  }
  return newArr;
}

var power = function(element) {
  return element * element;
};

var capitalize = function(value) {
  return value.toUpperCase();
};

numbers = [1, 2, 3, 4];
console.log(map(power, numbers));
console.log(numbers);

strings = ['apple', 'bear', 'cauliflower', 'doorknob'];
console.log(map(capitalize, strings));
console.log(strings);

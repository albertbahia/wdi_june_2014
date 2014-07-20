var forEach = function (array, action) {
  for (var i = 0; i < array.length; i++) {
    action(array[i]);
  }
};

var map = function(fxn, array) {
  var result = []; 
  forEach(array, function(element) {
    result.push(fxn(element));
  });
  return result;
}

var triple = function (element) {
  return element * 3;
};

numbers = [1, 2, 3, 4];
console.log(map(triple, numbers));
console.log(numbers);


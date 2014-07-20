function map(array, callback) {
  var newArray = [];

  for (var i = 0; i < array.length; i++) {
    newArray.push(callback(array[i]));
  }

  return newArray;
}

var addFive = function(el) {
  return el + 5;
};

var numbers = [1,2,3,4,5];

console.log(map(numbers, addFive));

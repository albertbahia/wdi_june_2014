function select(array, callback) {
  var newArray = [];
  for (var i = 0; i < array.length; i++) {
    if (callback(array[i])) {
      newArray.push(array[i]);
    }
  }
  return newArray;
}

var checkElement = function(el) {
  return el > 5;
};

var numbers = [1,2,3,4,5,6,7,8,9,10];
console.log(select(numbers, checkElement));

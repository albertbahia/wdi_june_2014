var my_select = function(func, array) {
  for(var i =0; i < array.length; i++) {
    func(array[i]);
  }
};

var even = function(el) {
  var newArray = [];
  var resultArray = [];
  newArray.push(el);
  for (var j = 0; j < newArray.length; j++) {
    if (newArray[j] % 2 === 0) {
      resultArray.push(newArray[j]);
    } else {
      return false;
    }
    console.log(resultArray);
  }
};

anyArray = [1, 'stuff', 2, 6, 7]
console.log('Original Array:');
console.log(anyArray);
console.log('');

console.log("New Array:")
my_select(even, anyArray);

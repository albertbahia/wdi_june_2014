function map(array, callback) {
  // var newArray = [];
  //
  // for (var i = 0; i < array.length; i++) {
  //   newArray.push(callback(array[i]));
  // }
  //
  // return newArray;

  // recursive
  var tempArray = array.slice(0);

  if (tempArray.length === 1) {
    return [callback(tempArray[0])];
  }

  return [callback(tempArray.shift())].concat(map(tempArray, callback));
}

var addFive = function(el) {
  return el + 5;
};

var numbers = [1,2,3,4,5];

console.log('mapped: [' + map(numbers, addFive) + ']');
console.log('original: [' + numbers + ']');

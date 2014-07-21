function select(array, callback) {
  // var newArray = [];
  // for (var i = 0; i < array.length; i++) {
  //   if (callback(array[i])) {
  //     newArray.push(array[i]);
  //   }
  // }
  // return newArray;

  // recursive
  var tempArray = array.slice(0);

  if (tempArray.length === 1) {
    if (callback(tempArray[0])) {
      return tempArray[0];
    } else {
      return [];
    }
  }

  if (callback(tempArray[0])) {
    return [tempArray.shift()].concat(select(tempArray, callback));
  } else {
    tempArray.shift();
    return [].concat(select(tempArray, callback));
  }
}

var checkElement = function(el) {
  return el < 5;
};

var numbers = [1,2,3,4,5,6,7,8,9,10];
console.log(select(numbers, checkElement));

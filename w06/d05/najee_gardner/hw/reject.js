function reject(array, callback) {
  // var newArray = [];
  // for (var i = 0; i < array.length; i++) {
  //   if (!callback(array[i])) {
  //     newArray.push(array[i]);
  //   }
  // }
  // return newArray;

  // recursive
  var tempArray = array.slice(0);

  if (tempArray.length === 1) {
    if (callback(tempArray[0])) {
      return [];
    } else {
      return tempArray[0];
    }
  }

  if (callback(tempArray[0])) {
    tempArray.shift();
    return [].concat(reject(tempArray, callback));
  } else {
    return [tempArray.shift()].concat(reject(tempArray, callback));
  }

}

var checkElement = function(el) {
  return el > 5;
};

var numbers = [1,2,3,4,5,6,7,8,9,10];
console.log(reject(numbers, checkElement));

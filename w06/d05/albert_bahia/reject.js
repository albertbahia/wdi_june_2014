var reject =  function(callBack, array) {
  for (var i = 0; i < array.length; i++) {
    callBack(array[i]);
  }
};

var rejectIt = function(el) {
  var newArray = [];
  var finalArray = [];
  var otherArray = [];
  newArray.push(el);

  for (var j = 0; j < newArray.length; j++) {
    if (newArray[j] < 3) {
      otherArray.push(newArray[j]);
    }
    else {
      finalArray.push(newArray[j]);
      console.log(finalArray);
    }
  }

};

anyArray = [1, 2, 3, 4, 5, 6, 7];
console.log('Original Array:');
console.log(anyArray);
console.log('');

console.log('New Array:')
reject(rejectIt, anyArray);

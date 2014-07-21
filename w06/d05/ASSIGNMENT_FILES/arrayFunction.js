  function each(arr, callback) {
    for (var i = 0; i < arr.length; i++) {
      callback(arr[i]);
    }
    return arr;
  }
  function map(arr, callback) {
    var result = [];
    for (var i = 0; i < arr.length; i++) {
      result.push(callback(arr[i]));
    }
    return result;
  }
  function sample(arr, sample_size) {
    if (sample_size == undefined) {
      var randomIndex = Math.floor(Math.random() * arr.length);
      return arr[randomIndex];
    } else if (sample_size <= arr.length) {
      var duplicate = arr.slice();
      var result = [];
      while (sample_size > 0) {
        var randomIndex = Math.floor(Math.random() * duplicate.length);
        result.push(duplicate.splice(randomIndex,1)[0])
        sample_size--;
      }
      return result;
    }
  }
  function include(arr, value) {
    for (var i = 0; i < arr.length; i++) {
      if (arr[i] == value) {
        return true;
      }
    }
    return false;
  }
  function reduce(arr,callback) {
    var result = arr[0];
    for (var i = 1; i < arr.length; i++) {
      result = callback(result, arr[i]);
    }
    return result
  }
  function select(arr, callback) {
    var result = [];
    for (var i = 0; i < arr.length; i++) {
      if (callback(arr[i])) {
        result.push(arr[i]);
      }
    }
    return result;
  }
  function reject(arr, callback) {
    var result = [];
    for (var i = 0; i < arr.length; i++) {
      if (!callback(arr[i])) {
        result.push(arr[i])
      }
    }
  }


a = [1,2,3,4];
b = ['a','b','c','d'];
var capitalize = function(val) {
  return val.toUpperCase();
};
var add = function(initial, next) {
  return initial + next;
};
var multiply = function(initial, next) {
  return initial * next;
}
// console.log(each(b,capitalize));
// console.log(map(b,capitalize));
// console.log(b)
// console.log(sample(a));
// console.log(sample(a, 2));
// console.log(a);
// console.log(include(a,'b'));
// console.log(include(b,'b'));
// console.log(reduce(a,add));
// console.log(reduce(a,multiply));
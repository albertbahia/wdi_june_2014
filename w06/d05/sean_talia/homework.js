//////// MAP /////////
function map(array, callback_fn) {
  var new_array = [];
  for (var i in array) {
      new_array.push(callback_fn(array[i]));
  };
  return new_array;
};
//////// INCLUDE /////////
function include(array, value) {
  for (var i in array) {
      if (array[i] === value) {
        return true;
      };
  };
  return false;
};
//////// SELECT /////////
function select(array, callback_fn) {
  var new_array = [];
  for (var i in array) {
      if (callback_fn(array[i])) {
        new_array.push(array[i]);
      };
  };
  return new_array;
};
//////// REJECT /////////
function reject(array, callback_fn) {
  var new_array = [];
  for (var i in array) {
      if (!callback_fn(array[i])) {
        new_array.push(array[i]);
      };
  };
  return new_array;
};
//////// REDUCE /////////
var add = function(a, b) {
  return a + b;
};
var subtract = function(a, b) {
  return a - b;
};
var multiply = function(a, b) {
  return a * b;
};
var divide = function(a, b) {
  return a / b;
};

function reduce(array, callback_fn) {
  var ans;
  for (var i = 0, len = array.length; i < len - 1; i++) {
    if (i === 0) {
      ans = callback_fn(array[i], array[i+1])
    } else {
      ans = callback_fn(ans, array[i+1])
    }
  }
  return ans;
};
//////// SAMPLE /////////
function sample(array, sampleSize) {
  if (typeof sampleSize === 'undefined' ) {
    return array[Math.floor(Math.random()*(array.length))];
  } else {
    var new_array = [];
    while (new_array.length < sampleSize) {
      var randomElement = array[Math.floor(Math.random()*(array.length))];
      if (!include(new_array, randomElement)) {
        new_array.push(randomElement);
      };
    };
  };
  return new_array
};
////////////// PLAYGROUND ////////////////

numbers = [1, 2, 3, 4, 5];

var timesFive = function(num) {
  return num*5;
}

console.log(map(numbers, timesFive));
console.log(include(numbers, 5));

//console.log(reduce(numbers, divide));
//console.log(sample(numbers, 4));

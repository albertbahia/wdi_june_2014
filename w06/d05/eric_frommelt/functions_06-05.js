var numbers = [1, 2, 3, 4];
var strings = ['a','b','c','d'];

//......MAP.....................
var map = function(fxn, arr) {
    fxn();
};

var mapit = function() {
  // Create a new array from the numbers array
  var new_array = numbers.slice();
  // Iterate over the array and change the values
  for(var i = 0; i < new_array.length; i++) {
      new_array[i] += 4;
  };
  console.log('map result:');
  console.log(new_array);
  return new_array;
};

map(mapit, numbers);

//......INCLUDE...............
var include = function(arr, val) {

  for(var i = 0; i < arr.length; i++) {

    if (arr[i] == val) {
      console.log('true');
      return true;
    }
  }

  for(var i = 0; i < arr.length; i++) {

    if (arr[i] != val) {
      console.log('false');
      return false;
    }
  }
};

include(numbers, 8);


//......SELECT...............
var select = function(fxn, arr) {
  fxn();
};

var selectit = function(value) {
  var select_array = numbers.slice();
  var results_array = []
  for(var i = 0; i < select_array.length; i++) {
    if (select_array[i] % 2 == 0) {
      results_array.push(select_array[i]);
    }
  }
  console.log('select result:');
  console.log(results_array);
  return(results_array);
};

select(selectit, numbers);

//......REJECT...............
var reject = function(fxn, arr) {
  fxn();
};

var rejectit = function(value) {
  var reject_array = numbers.slice();
  var results_array = []
  for(var i = 0; i < reject_array.length; i++) {
    if (reject_array[i] % 2 != 0) {
      results_array.push(reject_array[i]);
    }
  }
  console.log('reject result:');
  console.log(results_array);
  return(results_array);
};

reject(rejectit, numbers);

//......REDUCE...............
var reduce = function(fxn, arr) {
  fxn();
};

var reduceit = function(arr) {
  var reduce_array = numbers.slice();
  var result = 0;
  for(var i = 0; i < reduce_array.length; i++) {
    result += reduce_array[i];
  };
  console.log('reduce result:');
  console.log(result);
  return result;
};

reduce(reduceit, numbers);

//......SAMPLE...............
var sample = function(arr) {
  var sample_array = arr.slice();
  var random_num = Math.floor(Math.random() * (sample_array.length - 0));
  var sample_result = sample_array[random_num];
  console.log('sample result:');
  console.log(sample_result);
  return sample_result;
};

sample(numbers);

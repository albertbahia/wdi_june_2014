var map = function(arr, fxn) {
  result = [];
  for( i in arr ) {
    result.push(fxn(arr[i]));
  }
  return result;
};

var include = function(arr, value) {
  for( i in arr ) {
   if( arr[i] === value) {
     return true;
   }
   return false;
  }; 
};

var select = function(arr, fxn) {
  result = [];
  for( i in arr ) {
    if( fxn(arr[i]) ) {
      result.push(arr[i]);
    }
  }
  return result;
};

var reject = function(arr, fxn) {
  result = [];
  for( i in arr ) {
    if( fxn(arr[i]) === false ) {
      result.push(arr[i]);
    }
  }
  return result;
};

var sample = function(arr, limit) {
  if (limit > arr.size || limit < 0) {
    limit = arr.size
  }
  rand_index = rand(index);
  return arr[rand_index];
};

console.log(sample[1,2,3]);

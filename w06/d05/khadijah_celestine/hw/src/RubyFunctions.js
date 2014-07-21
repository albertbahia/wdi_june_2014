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

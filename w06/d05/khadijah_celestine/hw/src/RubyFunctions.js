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

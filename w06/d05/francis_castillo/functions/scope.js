var each = function(fxn, arr) {
  for (var i = 0; i < arr.length; i++) {
    fxn(arr[i]);
  }
};

var dummy = function(ele){
  console.log(ele);
};
array = [1,2,3,4];
each(dummy, array);

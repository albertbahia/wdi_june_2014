var map = function(callBack, array) {
  for(var i = 0; i < array.length; i++) {
    callBack(array[i]);
  }
};

var newArray = [];

// --function to call back----
var mapIt = function(el) {
  newArray.push(el);
};
// ----------------------------

anyArray = [1, 2, 3];
console.log("Original Array");
console.log(anyArray);
console.log("");

console.log("New Array");
map(mapIt, anyArray);
console.log(newArray);

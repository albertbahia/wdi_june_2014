// var newArray = [];
var include = function(array, value) {
  for(var i = 0; i < array.length; i++) {
    if(array[i] === value) {
      return true;
    } else {
      return false;
    }
  }
  // return newArray;
  // console.log(newArray);
};

var anyArray = ["sheldon", 1, "penny"];
var answer = include(anyArray, 1);
console.log('Original Array:');
console.log(anyArray);
console.log("");

console.log("Output:");
console.log(answer);

//////Subtract//////
var subtract = function(a, b) {
  return a - b;
};
console.log(subtract(9,3));
/////ADD/////
function add(a, b) {
  return a + b;
}
//////Times//////
var times = function(a, b) {
  newArr = [];
  for (var i = 0; i < b; i++) {
    newArr.push(a);
  }
  return newArr.reduce(add);
};
console.log(times(9,3));
//////Divide////
var divide = function(a, b) {
  var count = 0;
  var newArr = [a,b];
  for (var i = 0; i < b; i++) {
    if (newArr[0] >= newArr[1]) {
      newArr[0] = subtract(newArr[0], newArr[1]);
      count++;
    }
  }
  return count;
};
console.log("dividing");
console.log(divide(9,3));
console.log(divide(25,6));
console.log(divide(25,5));
console.log(divide(5,22));

//////////////////////////////////////
///Factorial/////////////////////////

function factorial(num) {
  var newNumArr = Array.apply( 1, { length: (num + 1)}).map(Number.call, Number);
  newNumArr.shift();
  return newNumArr.reduce(times);
}
console.log(factorial(5));
console.log(factorial(3));

//////////////////////////////////////
/////////Power///////////////////////

function power(a, b) {
  newArr = [];
  if (b === 0) {
    return 1;
  } else {
      for (var i = 0; i < b; i++) {
        newArr.push(a);
      }
  return newArr.reduce(times);
  }
}

console.log(power(3,3));
console.log(power(4,2));
console.log(power(3,1));
console.log(power(3,0));

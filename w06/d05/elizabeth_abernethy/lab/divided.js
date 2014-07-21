// DIVIDED
// - function w/ 2 params ; perform integer division on 2 numbers

var divided = function(num1, num2) {
  var multiplier = num1;
  var counter = 0;
  for (var i = 0; i < num2; i++) {
    if (multiplier >= num2) {
      multiplier -= num2;
      counter++;
    }
  }
  return counter;
};

var answer1 = divided(10, 5);
// 2
var answer2 = divided(5, 5);
// 1
var answer3 = divided(5, 10);
// 0

console.log(answer1);
console.log(answer2);
console.log(answer3);

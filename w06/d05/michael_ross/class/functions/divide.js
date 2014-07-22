var divide = function(num1, num2) {
  var multiplier = num1;
  var timesDivided = 0;
  for (var i = 0; i < num2; i++) {
    if (multiplier >= num2) {
      multiplier -= num2;
      timesDivided++
    }
  }
  return(timesDivided);
};

var ans1 = divide(5, 2);
var ans2 = divide(2, 4);
var ans3 = divide(8, 4);

console.log(ans1);
console.log(ans2);
console.log(ans3);

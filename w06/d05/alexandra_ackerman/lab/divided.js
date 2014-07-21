var divide = function(num1, num2){
  var multiplier = num1;
  var timesDivided = 0;
  for (var i = 0; i < num2; i++){
    if (multiplier >= num2) {
     multiplier -= num2;
     timesDivided ++;
    }
  }
  return (timesDivided);
};

var answer1 =  divide(20, 4);
var answer2 = divide(5, 22);
var answer3 = divide(10, 4);

console.log(answer1);
console.log(answer2);
console.log(answer3);


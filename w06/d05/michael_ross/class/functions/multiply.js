var multiply = function(n1, n2) {
  var product = 0
    for (var i = 0; i < n2; i++) {
      product += n1
    }
  return(product);
};

var ans1 = multiply(7, 8);
var ans2 = multiply(8, 8);
var ans3 = multiply(9, 9);

console.log(ans1);
console.log(ans2);
console.log(ans3);

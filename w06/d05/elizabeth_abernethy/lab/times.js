
// TIMES
// - function w/ 2 params ; returns result of performing multiplication

var times = function(num1, num2) {
  var total = 0;
  for ( var i = 0; i < num2; i++ ) {
    total += num1;
  }
  console.log(total);
};

times(5, 3);
times(10, 10);
times(2, 18);


// return 'num2' copies of 'num1' and add them together to get total
// 3 + 3 + 3 == 3 * 3 == 9

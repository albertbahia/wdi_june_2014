// var runner = function(fxn) {
//   fxn();
// };

var runner = function(fxn, num) {
  for (var i = 0; i < num; i++) {
    fxn();
  }
};

var hello = function() {
  console.log("Hello!");
};

var hi = hello;
hi();
runner(hello,10);

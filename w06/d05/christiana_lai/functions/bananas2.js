// Define a function that can run other function
var runner = function(fxn, num) {
  // Run the function 'fxn' 'num' times
  for(var i = 0; i < num; i++) {
    fxn();
  }
};

var hello = function() {
  console.log("hi.");
};

var goodbye = function() {
  console.log("goodbye.");
};

runner(hello, 5);
runner(goodbye, 3);

// Defined a function that can run other functions
var runner = function(fxn, num) {
  // Run the function 'fxn' 'num' times
  for(var i = 0; i < num; i++) {
    fxn();
  }
};

// Created a dummy function to be run
var hello = function() {
  console.log("Hello.");
};

var goodbye = function() {
  console.log("See ya.");
}

runner(hello, 5);
runner(goodbye, 3);

// Defined a function that can run other functions
var runner = function(fxn, num) {
  for (var i = 0; i < num; i++) {
    fxn();
  }
};

// Created a dummy function to be run
var hello = function() {
  console.log('Hello.');
};

// We called our runner function and told it to run the dummy function

runner(hello, 3);

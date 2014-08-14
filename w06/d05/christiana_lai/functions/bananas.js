// Defined a function that can run other functions
var runner = function(fxn) {
  fxn();
};

// Created a  dummy function to be run
var hello = function() {
  console.log("Hello.");
};

// var hi = hello;
// hi();


// We called our runner function and told it
// to run the dummy function
runner(hello);

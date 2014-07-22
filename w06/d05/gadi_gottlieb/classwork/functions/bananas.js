//Defined a function that can run other functions
var runner = function(fxn, num){
  // run the function 'fxn' 'num' times
  for (var i = 0; i < num; i++) {
    fxn();
  }
};

// Created a dummy dunction to be run
var hello = function() {
  console.log("Hello.");
};

var goodbye = function() {
  console.log("See Ya!")
}

// We called our runner function and told it
// to run the dummy function
runner(hello, 4);
runner(goodbye, 3);

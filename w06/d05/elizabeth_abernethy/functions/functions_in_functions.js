// -------------------- FUNCTION RUNNING A FUNCTION --------------------

// job: accept one argument that is expected to be a function, call that function

// DEFINED A FUNCTION THAT CAN RUN OTHER FUNCTIONS
var runner = function(fxn) {
  fxn();
};

// CREATED DUMMY FUNCTION TO BE RUN
var hello = function() {
  console.log("Hello.");
};

// RUNS THE FUNCTION HELLO
// hello();

// ONLY REFERES TO THE FUNCTION HELLO
// hello;

// STORES A FUNCTION INSIDE OF A VARIABLE
// var hi = hello;
// hi();


// CALLED RUNNER FUNCTION / TOLD IT TO RUN DUMMY FUNCTION
runner(hello);


// ------------------ FUNCTION RUNNING A FUNCTION n TIMES --------------------


// RUNNER ARGUMENT ACCEPT 2 INPUTS: function, number
// --- should: run the function 'fxn' 'num' times

var runnerTimes = function(fxn, num) {
  for ( var i = 0; i < num; i++ ) {
    fxn();
  }
};

var hi = function() {
  console.log("Hi.");
};

var goodbye = function() {
  console.log("See ya.");
};

runnerTimes(hi, 5);
runnerTimes(goodbye, 3);

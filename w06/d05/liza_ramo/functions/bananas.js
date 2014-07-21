////////////////// Functions that run other functions //////////////////////


// This function runs other functions:
var runner = function (functn) {
  functn();
};

var hello = function () {
  console.log("Herrow.");
};

// Assign the var 'hi' to the function 'hello':
var hi = hello;

// ^ hello does not have () because just referencing the function, not calling it
// If you put () after hello, it is assigning the var 'hi' to the return value of the function 'hello'

// Call this var (which calls the function):
// hi();

// run the Runner function:
// runner(hello);


// Tweak the Runner function so that it accepts two args: a function and the num of times that func should be run:
var runner2 = function (func, num) {
  for (var i = 0; i < num; i++) {
    func();
  }
};

runner2(hello, 3);

/////////////// Scope ///////////////////

// Function that takes two args: a function & an array
// it will run that function for each element in the array:
var each = function(fxn, arr) {
  for (var i = 0; i < arr.length; i++) {
    fxn(arr[i]);
  }
};

// Dummy function to plug in the each function:

var dummy = function(el) {
  console.log(el);
};

var arr = ['do', 'you', 'even', 'hoist', 'bro'];

each(dummy, arr);

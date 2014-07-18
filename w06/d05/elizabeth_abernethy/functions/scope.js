// --------------------- SCOPE LEVEL 1 ---------------------

// var nums = [ 1, 2, 3, 4, 5, 6, 7, 8 ];
// var words = ["do", "you", "even", "hoist", "bro"];

// var each = function(fxn, array) {
//   for ( var i = 0; i < array.length; i++ ) {
//     fxn(array[i]);
//   }
// };

// var dummy = function(el) {
//   console.log(el);
// };

// each(dummy, nums);
// each(dummy, words);


// --------------------- SCOPE LEVEL 2 ---------------------

// var each = function(fxn, array) {
//   for ( var i = 0; i < array.length; i++ ) {
//     fxn(array[i]);
//   }
// };
//
// var app = function(el) {
//   var printAThing = function(el) {
//     console.log(el);
//   }
//   var words = ["do", "you", "even", "hoist", "bro"];
//
//   each(printAThing, words);
// };
//
// app();

// --------------------- SCOPE LEVEL 3 ---------------------

var each = function(fxn, array) {
  for ( var i = 0; i < array.length; i++ ) {
    fxn(array[i]);
  }
};

var app = function(el) {
  var prefix = "Fruit: ";
  var printAThing = function(el) {
    console.log(prefix + el);
  }
  var fruits = ["apple", "orange", "banana"];

  each(printAThing, fruits);
};

app();


// * a closure remembers the variables that exist within the scope of it's creation

// functions in JavaScript are closures
// functions are the ONLY closures in JavaScript

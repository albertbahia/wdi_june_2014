
// to run without copy/paste => terminal: node <filename>

// ---------------------  JavaScript Functions  ---------------------


////////////////////////
// DEFINING FUNCTIONS //
////////////////////////

function hello() {
  console.log("Hey, y'all!");
}


///////////////////////
// CALLING FUNCTIONS //
///////////////////////

hello();



/////////////////////
// NAMED FUNCTIONS //
/////////////////////


function howdy(message) {
  console.log("Hey hey hey! " + message);
}

howdy("This is dog.");


/////////////////////////
// ANONYMOUS FUNCTIONS //
/////////////////////////

// can be stored in a variable

var yo = function() {
  console.log("Yo");
};

yo();


// ---- how do we make functions return things to us?

var add = function(a, b) {
  // relies on implicit returns, but JS is explicity
  // a + b; ----> won't work in JS, must add "return"
  return a + b;
};

var answer = add(3, 5);
console.log(answer);

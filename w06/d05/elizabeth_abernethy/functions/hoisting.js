// Bro, do you even hoist?


// function namedHello() {
// }

// var unnamedHello = function() {
// }



// programs are executed line-by-line

// -- create variable
// var a;
// -- assign variable
// a = 10;
// -- display variable
// console.log(a);



// ---  hoisting -> JS looks through the entire file and looks for variable creations
// --- a variable can be used before it is created
// --- JS will pull the variables to the top (or "hoist" them) to be able to use them

// console.log(a);
// var a = 10;
// console.log(a);




// --- unnamed functions do NOT get hoisted to the top because they are
// --- variable creations, only the var gets hoisted (equivalent to: var doesItWorkUnnamed)

var doesItWorkUnnamed = function() {
  console.log("It works unnamed!");
};



doesItWorkNamed();
doesItWorkUnnamed();

// --- named functions get completely hoisted up to the top - IT WILL WORK

function doesItWorkNamed() {
  console.log("It works named!");
}

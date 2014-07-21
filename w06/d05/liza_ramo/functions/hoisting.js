////////////////////// **Hoisting** //////////////////////

///// Hoisting variables //////
// create a var
// assign it a value
// print the value
console.log(a);
var a = 10;
console.log(a);

/////////////////////////////////////////
///// Hoisting named variables //////////

function doesItWorkNamed() {
  console.log("It works named!");
}

doesItWorkNamed();
doesItWorkUnnamed();

var doesItWorkUnnamed = function() {
  console.log("It works unnamed!");
};

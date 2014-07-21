// var a;
// a = 10;
// console.log(a);




function doesItWorkNamed() {
  console.log("It works named!");
}

var doesItWorkUnnamed = function() {
  console.log("It works unnamed!");
};

doesItWorkNamed()
doesItWorkUnnamed()

//unnamed functions are not entirely hoisted to the top,
// whereas named functions are completely hoisted

// console.log(age);
// var age = 24;
// console.log(age);

// unnamed function are not entirely hoisted to the top

var doesItWorkUnnamed = function(){
  console.log("It works unnamed!");
};

doesItWorkNamed();
doesItWorkUnnamed();

// Entire named function gets hoisted to the top.
function doesItWorkNamed(){
  console.log("It works!");
}

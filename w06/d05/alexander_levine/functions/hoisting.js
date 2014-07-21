doesItWorkNamed();
doesItWorkUnnamed();

// Entire named function gets hoisted to the top
function doesItWorkNamed() {
  console.log('It works named!');
}

// Not entirely hoisted to the top
var doesItWorkUnnamed = function() {
  console.log('It works unnamed!')
};

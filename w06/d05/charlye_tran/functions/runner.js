// //runner's job is to accept a function and call that function
// var runner = function(fxn){
//   fxn();
// };
//
var hello = function(){
  console.log("Hello");
};

var goodbye = function(){
  console.log("Bye");
};

//fun a function num times
var runner = function(fxn, num){
  for (var i = 0; i < num; i++){
    fxn();
  }
};

runner(hello, 5);
runner(goodbye, 3);

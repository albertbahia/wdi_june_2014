// take a function and do something to each element in that array
var each = function(fxn, arr){
  for (var i = 0; i < arr.length; i++){
    fxn(arr[i]);
  }
};

var addFive = function(num){
  console.log(num + 5);
};

each(addFive, [1, 2, 3]);

//return a new array after performing a function through the elements of an array
var new_array = [];
var map = function(fxn, arr){
  for (var i=0; i < arr.length; i++){
    new_array.push(fxn(arr[i]));
  }
  return new_array;
};

var timesFive = function(num){
  return(num * 5);
};

map(timesFive, [1, 2, 3]);

//a closure remembers a variable that exists in the scope of its creation
var app = function (){
  var prefix = "Fruit: ";
  var printAThing = function(el){
    console.log(prefix + el);
  };
  var arr = ['sup', 'hi','holla'];
  each(printAThing, arr);
};

app();

//will not work bc it is out of scope!
//console.log(arr);

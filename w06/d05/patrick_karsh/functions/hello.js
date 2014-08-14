// named function
function hello(message){
	console.log("hi there" + message);
}
hello("welcome to Jackass.");
hello("this is Sparta.");

// anon functions 
var add =function(a, b){
	a + b;
}; 

var answer = add(3, 5);
console.log(answer);


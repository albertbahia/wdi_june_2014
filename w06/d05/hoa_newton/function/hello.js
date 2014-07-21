function hello() {
	console.log("Hi there.");
}
hello(); 
hello     : without () will just refer to the function hello but not call it

function hello(message){
	console.log("Hi there, " + message)
}
hello("This is Jackass");
hello("This is Eli");

Name a function (just for an anonymous function)
var yo = function(){
	console.log("Yo");
};
yo;  //refering the function
yo();  // call function yo

var add = function(a, b) {
	 return a + b;      // We HAVE TO say return here to return
};										// JS does not have implicit return
var answer = add(3, 5);
console.log(answer)


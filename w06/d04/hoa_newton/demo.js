// Differences:
// 1. Semicolons everywhere
// 2. Curly braces everyhwere
// 3. Parenthesis everywhere
// 4. Vars everywhere
// 5. camel_Case everywhere

var myFavoriteNum = 1;
var message = "Hello, I'm a string";
var otherMessage = "Hi, I\'m a less formal string.";

var myName = "Adam";
var myGreeting = "Hi, I'm, " + myName + "!";

console.log(myGreeting);

var age = 49;

if (age > 21) {
	console.log("Welcome!");
}else if (18 < age < 21) {
	console.log("Come in, but here's a wristband");
}else {
	console.log("Nice try, you've got still " 18 - age " to go");
}


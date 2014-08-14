console.log(a);
var a = 10;
console.log(a);


doesItWorkNamed();



function doesItWorkNamed() {
	console.log("It works named!");
}
var doesItWorkUnamed = function() {
	console.log("It works unnamed!");
}
doesItWorkUnamed();
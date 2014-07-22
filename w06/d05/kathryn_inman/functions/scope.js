var each = function(fxn, arr) {
	for (var i = 0; i < arr.length; i++) {
		fxn(arr[i]);
	}
};

var app = function () {
	var prefix = "Uh, ";
	var printAThing = function(element) {
		console.log(prefix + element);
	};

	var questionArray = ['do', 'u', 'even', 'hoist', 'bae'];

	each(printAThing, questionArray); // WHAT. WHAT. HOW DOES each() KNOW ABOUT prefix???
};

app();


// ^^ every function in JS is a closure, so it knows about all the vars/things set in the scope it was set in and carries them with it wherever it travels 
// BUT it doesn't take vars it's used on in other scopes it's called within back with it to its home

// JS scope "bleeds inwards", to smaller circles of scope


















// -------------------------------

// var map = function(fxn, arr) {
// 	var newArray = [];
// 	for (var i = 0; i < arr.length; i++) {
// 		newArray.push(fxn(arr[i]));
// 	}
// 	console.log( newArray );
// }

// var mapTestArray = [2, 34, 12, 5, 13]

// var mapTestFunction = function(element) {
// 	element * 2;
// };

// map(mapTestFunction, mapTestArray);
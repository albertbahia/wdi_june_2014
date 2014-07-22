// defined a function that will run another function
var runner = function(fxn) {
	fxn();
};

// created a dummy function
var hello = function() {
	console.log("Sup Bae");
};

// called the runner function and told it to run hte dummy function
// runner(hello);

// ------------------------------

var timesRunner = function(fxn1, fxn2, num1, num2) {
	for (var i = 0; i < num1; i++) {
		fxn1();
	}
	for (var x = 0; x < num2; x++) {
		fxn2();
	}
}

var goodbye = function() {
	console.log("u couldn't keep me bae");
};

timesRunner(hello, goodbye, 5, 8);


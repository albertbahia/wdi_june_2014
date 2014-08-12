var runner = function(fxn, num) {
	for (var i= 0; i < num; i++) { 
	fxn(); 
}

};

var hello = function() {
	console.log("I'm da besssssssssssssssssssssssssss");
};

runner(hello, 5); 
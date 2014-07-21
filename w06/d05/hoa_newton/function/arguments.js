// //define function that can run other functions
// var runner = function(fxn){
// 	fxn()
// };

// //Create a dummy function to be run
// var hello = function(){
// 	console.log("Hello.")
// };

// var hi = hello; 
// hi();   	// calling function

// //Call the runner function and told it to run the dummy function
// runner(hello);

var runner = function(fxn, num){
	for(var i = 0; i <= num; i++){
		fxn();
	}
}

var hello = function(){
	console.log("hello")
};

runner(hello, 5);
//defined a function that can run other funtion
var runner = function(fxn, num) {

  for(var i=0;i<num;i++){
    fxn();
  }
};

//define funtion
var hello = function() {
  console.log("Sup bruh.");
};

var later = function() {
  console.log("Peace.")
}

//call runner function that runs hello function
runner(hello, 5);
runner(later, 2);

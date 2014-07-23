function hello(){
  console.log("Hi there.");
}

// calling the function:

hello();




function hello(message){
  console.log("Hi there." + message);
}

// call the function like so:
hello("This is jackass.");
hello("This is sparta.");
hello("This is dog.");

// this function is anonymous, it doesn't have a name so cannot call it later
function(){
  console.log("Yo")
}

// when function doesn't have a name, can store it in a variable like so:

var yo = function(){
  console.log("Yo");
};

// call this function lik so:

yo();


another function:

var add = function(a,b) {
  return a + b;
};

var answer = add(3, 5);
console.log(answer);



// * Write a function to accept three numbers and return their product.


function product(a, b, c) {
  return (a * b * c)
}

var answer1 = product(1, 2, 3);
var answer2 = product(2, 4, 6);
var answer3 = product(234, 27835, 853);

console.log(answer1);
console.log(answer2);
console.log(answer3);

// Write a function to accept an age and returns
//   * true if you can drink
//   * false if you cannot drink

function(age)
  if (age >= 21) {
   return true;
} else {
    return false;
  }
}

if (canYouDrink(25)) {
  console.log("25 year olds can drink");
} else {
  console.log("18 year olds cannot drink");
}


// / * Write a function to accept an array and print the elements in order

// -get this answer from the instructor's doc from this exercise

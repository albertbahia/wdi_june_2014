// Differences:
// 1) SEMICOLONS EVERYWHERE
// 2) CURLY BRACES EVERYWHERE
// 3) PARENTHESES EVERYWHERE
// 4) VARs EVERYWHERE
// 5) camelCase EVERYWHERE


// variables in JS
var myFavoriteNum = 1;
var message = "Hello, I'm a string, here's a quote \" my name is Liz\"";
var otherMessage = 'Hi, I\'m a less formal string.';

var myName = "Liz";
var myGreeting = "Hi, I'm, " + myName + "!";

// don't have print or puts
console.log(myGreeting);

// as a good habit, we will always use 'var' in front of
// our variables, to create a local variable

// THIS IS BAD, CREATES A GLOBAL VARIABLE
// harisFavoriteFood = "bananas"

// doesn't have methods on numbers, no methods on strings
// in JS, string and numbers are NOT objects, but "primitive types"

// floating point numbers are imprecise

// = assigns
// == tries to coerce the right side to be the same as the left
// === doesn't force anything; tells you the truth



///////////////////
// true / false  //
///////////////////



t = true;          // Ruby: true     // JavaScript: true
f = false;         // Ruby: false    // JavaScript: false
n = null;          // Ruby: false    // JavaScript: false
u = undefined;     // Ruby: false    // JavaScript: false
z = 0;             // Ruby: true     // JavaScript: FALSE!!!
empty = "";        // Ruby: true     // JavaScript: FALSE!!!
fullString = "Hi"; // Ruby: true     // JavaScript: true




///////////////////
// if statements //
///////////////////




var hoodieSwagLevel = 100;

if (hoodieSwagLevel < 10) {
  console.log("bro do you even hoist?");
  console.log("bro do you even lift?");
} else if (hoodieSwagLevel > 50) {
  console.log("wow. such hood. very swag. amaze. ");
  console.log("wow. such fleece. very warms. mmmm. ");
} else{
  console.log("respectable");
}




///////////////////
//     loops     //
///////////////////


// while loops

javascriptSwoleness = 2;
while (javascriptSwoleness < 100) {
  console.log("doing some reps");
  javascriptSwoleness++;
  console.log("How much have I bulked?" + javascriptSwoleness);
}


// for loops

// first statement = counter variable
// second statement = test to keep looping
// third statement = what do i do at the end of every iteration

// gives you each element in the array
for (var i = 0; i < 4; i++) {
  console.log(lyrics[i]);
}

// gives you the index of each element in the array
for (index in lyrics) {
  console.log(lyrics[index]);
}

// Differences:
// 1) Semicolons everywhere
// 2) Curly Braces everywhere
// 3) Parenthesis everywhere
// 4) Vars everywhere
// 5) camelCase everywhere


var myFavoriteNum = 5;
var message = "Hello, I'm a string, here's a quote \'my name is michael\'...";
var otherMessage = 'Hi, I\'m a less formal string.';

var myName = "Michael";
var myGreeting = "Hi, I'm, " + myName + "!";

// This is bad, creates a global variable
// harisFavoriteFood = "bananas";


console.log(myGreeting)


// **Bouncer**
//
// * Define the following variables
//   * `age` : number
// * If your age is greater than 21, print "Welcome."
// * If your age is less than 21 but greater than 18, print "Come in, but here's a wristband."
// * If your age is less than 18, print "Nice try, you've still got x years to go.", where x is how many years you have till you become 18.
//

var age = 14;
var years_to_go = 18 - age;

if (age > 21) {
  console.log("Welcome");
} else if (age < 21 && age > 18) {
  console.log("Come in, but here's a wristband");
} else if (age < 18) {
  console.log("Nice try, but you've still got " + years_to_go + " years to go");
}

// **Air conditioning**
//
// * Define the following variables
//   * `threshold` : number, 70
//   * `temperature` : number
//   * `acWorking` : boolean
// * Use `if` statements to implement the following behavior
//   * If the temperature is greater than the threshold and the AC is working, print "Turn on the AC!"
//   * If the temperature is greater than the threshold and the AC is not working, print "Fix the AC! It's hot!"
//   * If the temperature is less than the threshold and the AC is working, print "Ah, maxin' relaxin'."
//   * If the temperature is less than the threshold and the AC is not working, print "When you get the chance, fix the AC."
//

var threshold = 70;
var temperature = 89;
var acWorking = false;

if (temperature > threshold && acWorking == true) {
  console.log("Turn on the AC");
} else if (temperature > threshold && acWorking == false) {
  console.log("Fix the AC! It's Hot!");
} else if (temperature < threshold && acWorking == true) {
  console.log("Ah, maxin' relaxin'.");
} else if (temperature > threshold && acWorking == false) {
  console.log("When you get the chance, fix the AC.");
}


// #### `while` loops
//
// **Birthday bumps!**
//
// In my undergrad college, there existed a tradition where on your birthday, you would be held up by your arms and legs and kicked in the butt. The number of kicks you received would be equal to the age that you just turned. These butt kicks are called birthday bumps.
//
// * Define the following variables
//   * `age` : number
// * Use a `while` loop to implement the following behavior
//   * Print a message exclaiming how old the person just became
//   * Print the string "BUMP!" a number of times equal to the person's age
// * Example

// You turned 6!
// BUMP!
// BUMP!
// BUMP!
// BUMP!
// BUMP!
// BUMP!
// ```

var age = 14;
var num = 0;

console.log("You turned " + age);
while (num < age) {
  num++;
  console.log("BUMP!");
}

// Differences:
// 1) Semi colons everywhere
// 2) curly braces evrywhere
// 3) parenthesis everywhere
// 4) vars everywhere
// 5) camelCase everywhere

var myFavoriteNum = 13;
var message = "Hello, I\'m a string";
var otherMessage = "Hi, I'm a less formal string.";

var myName = "Jon";
var myGreeting = "Hi, " + myName + ".";

console.log(myGreeting)

// bouncer
var age = 3;
var knows_bouncer = false;

if (age < 21 && knows_bouncer === true){
  console.log("You're In. But be low key.");
}else if (age < 21 && knows_bouncer === false){
  console.log("Sorry chump, take a walk.");
}else{
  console.log("Come on in.");
}

//AC
var threshold = 70;
var temp = 90;
var acWorking = false;

if (temp > threshold && acWorking === true){
  console.log("Turn on the damn AC!");
}else if (temp > threshold && acWorking === false){
  console.log("Fix the damn ac, its hot!");
}else if (temp < threshold && acWorking === false){
  console.log("We chillin.");
}else if (temp < threshold && acWorking == false){
  console.log("When you get a minute, fix the ac.");
}


//bday bump
var age = 20;
var counter = 0;
 while (counter < age){
   console.log("BUMP!");
   counter++
 }

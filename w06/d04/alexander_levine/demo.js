//Bouncer

var age = 21

if (age >= 21) {
  console.log("Welcome");
} else if (18 <= age && age < 21) {
  console.log("Come in, but here's a wristband.");
} else {
  console.log("Nice try. You've still got " + (18 - age) + " years to go till you become 18.");
}

//Air Conditioning

var threshold = 70
var temperature = 65
var acWorking = false

if (temperature > threshold && acWorking === true) {
  console.log("Turn on the AC!");
} else if (temperature > threshold && acWorking === false) {
  console.log("Fix that AC! it's hot!");
} else if (temperature < threshold && acWorking === true) {
  console.log("Ah, maxin' relaxin'");
} else {
  console.log("When you get the change, fix the AC.");
}

//Birthday Bumps

var age = 21


var bump = 0
console.log("You turned " + age + "!");
while (bump <= age) {
  console.log("BUMP!");
  bump++;
}

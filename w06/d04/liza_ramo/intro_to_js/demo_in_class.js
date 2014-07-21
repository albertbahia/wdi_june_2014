
var myFavoriteNum = 13;
var message = "hello, I'm a string";
var otherMessage = 'Hi, I\'m a less formal string';

var myName = "Adam";
var myGreeting = "Hi, I'm " + myName + "!";

// No print or puts in JS

console.log(myGreeting)

// #############
//  Bouncer

var age = 26

if (age > 21) {
  console.log('Welcome');
} else if (age > 18 && age < 21) {
  console.log('Come in, but here\'s a wristband');
} else if (age < 18) {
  console.log('Nice try, you\'ve still got ' + (18 - age) + ' years to go');
}

// ##################
// Air Conditioning 

var threshold = 70;
var temperature = 72;
var acWorking = true;

if (temperature > threshold && acWorking) {
  console.log('Turn on the AC!');
} else if (temperature > threshold && !acWorking) {
  console.log('Fix the AC, it\'s hot!');
} else if (temperature < threshold && acWorking) {
  console.log('Ahh maxin\' relaxin\'');
} else if (temperature < threshold && !acWorking) {
  console.lot('When you get a chance fix the AC')
}

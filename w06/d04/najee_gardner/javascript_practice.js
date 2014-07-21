var age = 20;

if (age > 21) {
  console.log('Welcome.');
} else if (age > 18) {
  console.log('Come in, but here\'s a wristband');
} else {
  console.log('Nice try, you\'ve still got ' + (18 - age) + ' years to go.');
}

var threshold = 70;
var temperature = 40;
var acWorking = true;

if (temperature > threshold && acWorking) {
  console.log('Turn off the AC!');
}
else if (temperature > threshold && !acWorking) {
  console.log('Fix the AC! It\'s hot!');
}
else if (temperature < threshold && acWorking) {
  console.log('Ah, maxin\' relaxin\'.');
}
else {
  console.log('When you get the chance, fix the AC.');
}

var age = 25;
var counter = 0;
while (counter < age) {
  if (counter === 0) {
    console.log('You turned ' + age + '!')
  }

  console.log('BUMP!')
  counter += 1
}

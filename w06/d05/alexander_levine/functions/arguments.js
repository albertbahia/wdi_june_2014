function printArgs(a, b) {
  console.log(a);
  console.log(b);
}

// This one is juuust right
printArgs('hey', 'hello');

// This one has too many arguments
printArgs('hey', 'hi', 'yo', 'hiya');

// This one has too few arguments
printArgs('hey');

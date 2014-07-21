////////////////////// **Arguments** //////////////////////

function printArgs(a, b) {
  console.log(a);
  console.log(b);
}

// happy path:
printArgs('hey', 'hello');

// too many:
printArgs('hey', 'hello', 'hi');

// too few:
printArgs('hey');

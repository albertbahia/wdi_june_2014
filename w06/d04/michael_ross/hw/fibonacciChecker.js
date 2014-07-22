var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];


for (var i = 0; i < numbers.length; i++) {
  var firstCheck = Math.sqrt( 5 * Math.pow(numbers[i],2) - 4);
  var secondCheck = Math.sqrt( 5 * Math.pow(numbers[i],2) + 4);

  if (firstCheck == parseInt(firstCheck) || secondCheck == parseInt(secondCheck)){
    console.log('The number ' + numbers[i] ' is a fibonacci number');
  }  else {
    console.log('The number ' + numbers[i] ' is not a fibonacci number, son');
  }
}

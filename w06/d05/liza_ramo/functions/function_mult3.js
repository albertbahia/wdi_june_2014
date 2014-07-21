function multiply(a, b, c) {
  return (a * b * c);
}

var answer1 = multiply(1,1,1);
var answer2 = multiply(2,2,2);

console.log(answer1);
console.log(answer2);


function legal(age) {
  if (age >= 21) {
    return true;
  } else {
    return false;
  }
}

var age1 = legal(22);
var age2 = legal(19);

console.log(age1);
console.log(age2);

function printer(arr) {
  for(var index = 0; index < arr.length; index++) {
    console.log(arr[index]);
  }
}

printer([5, 4, 3, 2, 1]);
printer([4, 18, 3, 25]);

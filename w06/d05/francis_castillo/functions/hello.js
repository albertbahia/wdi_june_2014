// named function
function hello(message) {
  console.log("Hi there! " + message);
}

hello("This is jackass");

function product(num1, num2, num3) {
  return num1 * num2 * num3;
}

console.log(product(3,2,8));

function ageCheck(age) {
  if (age > 20) {
    return true;
  } else {
     return false;
  }
}

console.log(ageCheck(21));

function arrIterate(arr) {
  for (var i = 0; i < arr.length; i++) {
    console.log(arr[i]);
  }
}

var array = [1,2,3,4];
arrIterate(array);

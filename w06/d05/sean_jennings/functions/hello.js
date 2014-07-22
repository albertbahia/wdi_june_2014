* Write a function to accept three numbers and return their product.
* Write a function to accept an age and returns
  * true if you can drink
  * false if you cannot drink
* Write a function to accept an array and print the elements in order


function multiplyThreeNums(a,b,c) {
  return (a * b * c)
}

var answer = multiplyThreeNums(2,5,7);
console.log(answer)

var drinking = function (age) {

  if (age >= 21) {
    return true
  } else {
    return false
  }
}

var answer2 = drinking(22);
console.log(answer2)

function (array) {

  for (var i = 0; i < array.length; i++) {
    console.log(array[i]);
  }
}

var answer3 = function([a,b,c])
console.log(answer3)

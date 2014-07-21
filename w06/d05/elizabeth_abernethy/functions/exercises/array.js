// Write a function to accept an array and print the elements in order

colors = ["red", "orange", "yellow", "green", "blue", "indigo", "violet"];


function printer(array) {
  for ( var index = 0; index < array.length; index++ ) {
    console.log(array[index]);
  }

  // for (index in array) {
  //   console.log(array[index]);
  // }

}

printer([colors]);
printer(["red", "orange", "yellow", "green", "blue", "indigo", "violet"]);
printer([4, 8, 15, 16, 23, 42]);

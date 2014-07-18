function printer(arr) {
  for(var index = 0; index < arr.length; index++) {
    console.log(arr[index]);
  }

  // Alternate 'for' syntax
  // for(var index in arr) {
  //   console.log(arr[index]);
  // }
}

printer([1, 2, 3, 4, 5]);
printer([4, 8, 15, 16, 23, 42]);

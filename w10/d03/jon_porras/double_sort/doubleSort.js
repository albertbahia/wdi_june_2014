function doubleSort(array) {

  newArr = [];

  for(var i=0;i<array.length;i++) {

    if(isNaN(parseInt(array[i]))) {
      newArr.push(array[i]);
      newArr.sort();
    } else {
      newArr.push(parseInt(array[i]));
      newArr.sort(function(a,b) {
        return a-b
      });
    }
  }
  console.log(newArr);
}




doubleSort(["sugar", "butter", "egg"]);
doubleSort(["12", "10", "3", "4", "1"]);
doubleSort(["16", "8", "4", "salt", "baking", "soda"]);

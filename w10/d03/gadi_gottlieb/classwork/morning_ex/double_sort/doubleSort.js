function sort(array){

  for (var i = 0; i < array.length; i++) {
    array[i].compareNumbers(array[i],array[i])
    console.log(array[i]);
  }
}

function compare(a,b) {
  if (a < b)
    return -1;
  else if (a > b)
    return 1;
  else
    return 0;
}

function compareNumbers(a,b) {
  return a - b;
}


sort(["sugar", "butter", "egg"]);
=> ["butter", "egg", "sugar"]

sort(["12", "10", "3", "4", "1"]);
=> ["1", "3", "4", "10", "12"]

sort(["16", "8", "4", "salt", "baking", "soda"]);
=> ["4", "8", "16", "baking", "salt", "soda"]

sort(["2", "4", "banana", "1", "vanilla", "flour"]);
=> ["1", "2", "banana", "4", "flour", "vanilla"]

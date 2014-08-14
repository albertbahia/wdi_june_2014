function sort(array) {
  var newArray = [];
  var orderArray = [];
  var numArray = [];
  var wordArray = [];
  for (var i = 0; i < array.length; i++) {
    if (isNaN((parseInt(array[i])))) {
      orderArray.push("word");
      wordArray.push(array[i]);
    } else {
      orderArray.push("num");
      numArray.push(array[i]);
    }
  }
  numArray.sort(function(a, b){ return a-b; });
  wordArray.sort();
  for (var j = 0; j < orderArray.length; j++) {
    if (orderArray[j] === "num") {
      newArray.push(numArray[0]);
      console.log(numArray[0]);
      numArray.shift();
    } else {
      newArray.push(wordArray[0]);
      wordArray.shift();
    }
  }
  return newArray;
}

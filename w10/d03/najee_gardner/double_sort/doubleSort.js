function sort(array) {
  var numbers = [];
  var words = [];
  var placement = [];

  for (var i = 0; i < array.length; i++) {

    if (parseInt(array[i])) {
      numbers.push(array[i]);
      placement.push('number');
    } else {
      words.push(array[i]);
      placement.push('word')
    }
    count++;
  }

  numberSwap = true
  wordSwap = true

  var whileCount = 0;
  while (numberSwap === true || wordSwap === true) {
    numberSwap = false
    wordSwap = false

    var forCount = 0;

    for (var i = 0; i < numbers.length; i++) {
      if (parseInt(numbers[i]) > parseInt(numbers[i + 1])) {
        var temp = numbers[i];
        numbers[i] = numbers[i + 1];
        numbers[i + 1] = temp;
        numberSwap = true;
      }
      forCount++;
    }

    for (var i = 0; i < words.length; i++) {
      if (words[i] > words[i + 1]) {
        var temp = words[i];
        words[i] = words[i + 1];
        words[i + 1] = temp;
        wordSwap = true;
      }
    }
    whileCount++;
  }

  var sortedArray = [];

  for (var i = 0; i < placement.length; i++) {
    if (placement[i] === 'number') {
      sortedArray.push(numbers.shift());
    } else {
      sortedArray.push(words.shift());
    }
  }

  return sortedArray;
}

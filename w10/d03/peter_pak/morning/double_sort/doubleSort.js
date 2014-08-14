function megaSort(array) {
  for (var i = 0; i < array.length; i++) {
    a = array[i];
      for (var j = i; j > 0 && a < array[j - 1]; j--) {
        var b = array[j];
        if (isNaN(parseInt(a)) && isNaN(parseInt(b))) {
          array[j] = array[j - 1];
        } else if (isInteger(parseInt(a)) && isInteger(parseInt(b))) {
          array[j] = array[j - 1];
        } else {
        }
      }
      array[j] = a;
    }
    return array;
  }

function isInteger(x) {
  return x % 1 === 0;
  }

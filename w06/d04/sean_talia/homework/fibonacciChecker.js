var fibonaccisUpTo = function(limit) {
  fibonaccis = [1, 1]
  var a = 1;
  var b = 1;
  var c;
  while (fibonaccis[fibonaccis.length - 1] < limit) {
    c = a + b;
    if (c < limit) {
      fibonaccis.push(c);
    } else {
      break;
    }
    a = b;
    b = c;
  }
  return fibonaccis;
}

var isFibonacci = function(number) {
  fibonaccisBelow = fibonaccisUpTo(number + 1);
  for (var i = 0; i < fibonaccisBelow.length; i++) {
    if (fibonaccisBelow[i] === number) {
      return true;
    }
  }
  return false;
}

var checkForFibonaccis = function(num_array) {
  for (var i=0; i < num_array.length; i++) {
    console.log(isFibonacci(num_array[i]));
  }
}

var arr = fibonaccisUpTo(50000);

arr.push(22);

checkForFibonaccis(arr)

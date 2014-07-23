var numArr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 89, 100];
var numArr = numArr.sort();
var fibNums = [0,1];
  for(y=2; y < Math.max.apply(null, numArr); y++) {
    fibNums.push(fibNums[y-2] + fibNums[y-1]);
  }
  for(x=0; x < numArr.length; x++) {
    if(fibNums.indexOf(numArr[x]) != -1) {
        console.log(numArr[x] + " " + "is a fibnocci number!");
    }
  }

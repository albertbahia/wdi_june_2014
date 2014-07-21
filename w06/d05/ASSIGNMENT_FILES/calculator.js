var calculator = {
  add: function(numOne, numTwo){
    return numOne + numTwo;
  },
  subtract: function(numOne, numTwo){
    return numOne - numTwo;
  },
  times: function(numOne, numTwo){
    var result = 0;
    while(numTwo > 0 ){
      result += numOne;
      numTwo -= 1;
    }
    return result;
  },
  dividedBy: function(numOne, numTwo){
    var result = 0;
    while (numOne - numTwo >= 0){
      result += 1;
      numOne -= numTwo;
    }
    return result;
  },
  power: function(numOne, numTwo){
    var result = 1;
    var holder = numOne;
    if(numTwo == 0){
      return 1;
    } else {
      while (numTwo > 1){
        result = this.times(numOne, holder);
        numOne = result;
        numTwo -= 1;
      }
    }
    return result;
  },
  factorial: function(num){
    var result = 1;
    while (num > 1){
      result = this.times(result, num);
      num -= 1;
    }
    return result;
  }
}

console.log(calculator.factorial(5), 'Answer: ' + 120);
console.log(calculator.dividedBy(5,3), 'Answer: ' + 1);
console.log(calculator.dividedBy(20,4), 'Answer: ' + 5);
console.log(calculator.power(2,64), 'Answer: ' + 18446744073709552000);
console.log(calculator.power(2,3), 'Answer: ' + 8);
console.log(calculator.power(7,2), 'Answer: ' + 49);
console.log(calculator.add(2,2), 'Answer: ' + 4);
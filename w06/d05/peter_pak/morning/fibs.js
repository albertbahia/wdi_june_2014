function fibonacciSum(n) {
    var sequence = [];
    var sum = 0
    for (var index = 0; index < n; index++) {
        sequence.push(index < 2 ? index : (sequence[index - 2] + sequence[index - 1]));
    }
    for (var i = 0; i < sequence.length; i++) {
      sum += sequence[i];
    }    
    return sum
}

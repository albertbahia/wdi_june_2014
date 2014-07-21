f1 = 1
f2 = 1
var numbers = [];
numbers.push(f1);
numbers.push(f2);
for (i = 0; numbers.length < 10; i++){
  numbers.push(f1+f2);
  f2 = f2 + f1
  f1 = f2 - f1
}
var total=0;
for(i = 0; i < numbers.length; i++) { total += numbers[i]; }

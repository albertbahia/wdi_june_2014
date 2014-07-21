array = [21,46,67,66,78,34,29];

var myReject = function(fxn,arr) {
  valuesArray = [];

  for (var index = 0; index < 1; index++) {
    console.log(arr[index]);
    value = fxn(arr[index]);
    console.log(value);
    if (value) {

      valuesArray.push(value);
      console.log(ValuesArray);
    }
  }
  return valuesArray;

};


function isEven(value) {

  if (value % 2 == 0) {
    return value;
  } else {
    ;
  }
}

myReject(isEven,array);

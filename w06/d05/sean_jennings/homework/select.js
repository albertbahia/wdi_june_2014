array = [24,46,67,66,78,34,29];


var mySelect = function(fxn,arr) {
  valuesArray = [];
  for (var index = 0; index < arr.length; index++) {

    value = fxn(arr[index]);
    if (value) {
      valuesArray.push(value);
    }
  }
  return valuesArray;

};

function isEven(value) {

  if (value % 2 == 0) {
    return value;

  } else {

    return false;
  }

}

mySelect(isEven,array);

array = ["b","c","d","e","b"];


var include = function(arr,check) {

  for (var index = 0; index < arr.length; index++) {
    checkedElement = arr[index];
    }

    if (checkedElement == check) {
      return check;
    } else {
      return false;
    }
};

var outcome = include(array,"t");

console.log(outcome);

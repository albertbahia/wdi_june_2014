array = ["b","c","d","e","b"];


var include = function(arr,check) {

  for (var index = 0; index < arr.length; index++) {

    var checkedElement = arr[index];

    if (checkedElement == check) {
      return true;
    }
  }
  return false;
};

var outcome = include(array,"d");

console.log(outcome);

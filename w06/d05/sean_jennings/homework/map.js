 var array = [20,22,23,24];


 var map = function (fxn,arr) {
   var emptyArray = [];
   for (var index = 0; index < arr.length; index++) {

      var newIndexValue = fxn(arr[index]);
      emptyArray.push(newIndexValue);

    }
    return emptyArray;
 };

function addFive(num) {
  return (num + 5);
}


var outcome = map(addFive,array);

console.log(outcome);

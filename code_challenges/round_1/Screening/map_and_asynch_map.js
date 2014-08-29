// implement JavaScript's "map" function
function map(arrayOfInputs, iterator) {
    returnArray = [];
    for (var i = 0; i < arrayOfInputs.length; i++) {
        returnArray.push(iterator(arrayOfInputs(i)));
    }
    return returnArray;
}

// implement "map" as if the function were asyncronous
function asyncMap(arrayOfInputs, iterator, callback) {
    var returnArray = [];
    aMap(arrayOfInputs, iterator);
    
    function aMap(arrayOfInputs, iterator) {
        if (arrayOfInputs.length == 0) {
            callback(returnArray);
        }
        iterator(arrayOfInputs.pop(), function(temp) {
            returnArray.push(temp);
            aMap(arrayOfInputs, iterator)
        }
    }
}
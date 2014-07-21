function sample(array, sampleSize) {
    // //Attempt 1
    // sampleSize = sampleSize || 1;
    //
    // var usedIndices = [];
    // var newArray = [];
    //
    // while (newArray.length < sampleSize) {
    //   var randIndex = Math.floor(Math.random() * array.length);
    //
    //   if (usedIndices.indexOf(randIndex) === -1) {
    //     newArray.push(array[randIndex]);
    //     usedIndices.push(randIndex);
    //   }
    // }
    //
    // return newArray;

    // //Attempt 2
    // sampleSize = sampleSize || 1;
    //
    // var unusedIndices = []
    //
    // for (i in array) {
    //   unusedIndices.push(parseInt(i));
    // }
    //
    // var newArray = [];
    //
    // while (newArray.length < sampleSize) {
    //   randIndex = Math.floor(Math.random() * unusedIndices.length);
    //   newArray.push(array[unusedIndices[randIndex]]);
    //   unusedIndices.splice(randIndex, 1);
    // }
    // return newArray;


    // Attempt 3
    // sampleSize = sampleSize || 1;
    //
    // var arrayCopy = array.splice(0);
    // var newArray = [];
    //
    // while (newArray.length < sampleSize) {
    //   var randIndex = Math.floor(Math.random() * arrayCopy.length);
    //   newArray.push(arrayCopy.splice(randIndex, 1)[0]);
    // }
    // return newArray;

    //recursive
    sampleSize = sampleSize || 1;

    var tempArray = array.slice(0);
    var randomIndex = Math.floor(Math.random() * tempArray.length);

    if (sampleSize === 1) {
      return tempArray[randomIndex];
    }

    return [tempArray.splice(randomIndex, 1)[0]].concat(sample(tempArray, sampleSize - 1));
}

var words = ['hello', 'goodbye', 'swag', 'besss', 'fingah', 'gillyun'];

console.log(sample(words, 4));

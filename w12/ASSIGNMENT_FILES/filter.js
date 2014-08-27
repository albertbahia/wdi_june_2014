function searchNames(login) {
  return login.filter(function(pair) { return pair[0].match(/_$/); })
}

var result = filterOut([["foo","foo@foo.com"],["bar_","bar@bar.com"]]);
console.log(result) // [["bar_", "bar@bar.com"]]


// function filterOut (array) {
//   var arrLength = array.length
//   for (var i = 0; i < arrLength; i++) {
//     array[i].filter(function(element) {
//       if (element.match(/_/).index === (element.length - 1) && element.match(/_/) != "null"){
//         return array[i]
//       }
//     })
//   }
// }

// function filterOut(array) {
//   var arrLength = array.length;
//   return array.filter(function(element) {
//     return element[0].match(/_/) != null;
//   }) 
// }
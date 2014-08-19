var $ = function (selector) {
  var elements = [];

  var idIndex = selector.indexOf('.');
  var endIndex = selector.length;
  var className = selector.slice(idIndex + 1, endIndex);

  if (selector.indexOf('#') == -1 &&
           selector.indexOf('.') == -1) {
    elements = document.getElementsByTagName(selector);
  }
  else if (selector.indexOf('#') > -1) {
    var id = selector.match(/#\w+/)[0].substring(1);
    elements.push(document.getElementById(id));
    if (selector.indexOf('.')) {
      tempTag = selector.split(/\W+/)[0];
      tempTagUpper = tempTag.toUpperCase();
      if (tempTag === "") {}
      else if (elements[0].tagName !== tempTagUpper) {
          elements.pop();
        }
      }
    }

  else if (selector.indexOf('.') > -1 &&
           selector.indexOf('#') < 0) {
    if ( /^[a-z0-9]+$/i.test(selector[0])) {
      var tempTag = selector.slice(0, selector.indexOf('.'));
      var tempArr = document.getElementsByTagName(tempTag);
      var regex = new RegExp(className, "g");
      for (var i = 0; i < tempArr.length; i++) {
        if (tempArr[i].getAttribute('class').match(regex)) {
          elements.push(tempArr[i]);
        } else {}
      }
    } else {
    elements = document.getElementsByClassName(className);
    }
  }
  return elements;
};
//
//
//
// //for id search
//
//
// var id = selector.match(/#\w+/)[0].substring(1);
// var tempTag = selector.slice(0, selector.indexOf('#'));
// if (document.getElementById(id).nodeName === tempTag.toUpperCase) {
//   elements.push(document.getElementById(id));
// }
//
//
//
//
//
// if ( /^[a-z0-9]+$/i.test(selector[0])) {
//   var tempTag = selector.slice(0, selector.indexOf('#'));
//   var tempArr = document.getElementsByTagName(tempTag);
//   var id = selector.match(/#\w+/)[0].substring(1);
//   var regex = new RegExp(id, "g");
//   for (var i = 0; i < tempArr.length; i++) {
//     if (tempArr[i].getAttribute('id') !== null) {
//       elements.push(tempArr[i]);
//     }
//     else if (tempArr[i].getAttribute('id') == regex) {
//       elements.push(tempArr[i]);
//     }
//   }
// } else {
//   var id = selector.match(/#\w+/)[0].substring(1);
//   var tempTag = selector.slice(0, selector.indexOf('#'));
//   elements.push(document.getElementById(id));
// }

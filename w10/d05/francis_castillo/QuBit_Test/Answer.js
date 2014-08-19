var $ = function (selector) {
  var elements = [];
  var type = "";
  var type2 = "";
  var type3 = "";
  var selector1 = "";
  var selector2 = "";

  if (selector.indexOf('#') === 0 && selector.indexOf('.') === -1) {
    selector1 = selector.slice(selector.indexOf('#') + 1);
    type = "id";

  } else if (selector.indexOf('.') === 0 && selector.indexOf('#') === -1) {
    selector1 = selector.slice(selector.indexOf('.') + 1);
    type = "classs";

  } else if (selector.indexOf('#') === -1 && selector.indexOf('.') === -1) {

    type = "tag";
  } else if (selector.indexOf('#') > 0 && selector.indexOf('.') === -1) {
    selector1 = selector.slice(selector.indexOf('#') + 1);
    selector2 = selector.slice(0, selector.indexOf('#'));
    type = "multi";
    type2 = "id";

  } else if (selector.indexOf('.') > 0 && selector.indexOf('#') === -1) {
    selector1 = selector.slice(selector.indexOf('.') + 1);
    selector2 = selector.slice(0, selector.indexOf('.'));
    type = "multi";
    type2 = "class";

  } else if (selector.indexOf('.') != -1 && selector.indexOf('#') != -1) {
    if (selector.indexOf('.') < selector.indexOf('#')) {
      selector1 = selector.slice(selector.indexOf('.') + 1, selector.indexOf('#'));
      selector2 = selector.slice(selector.indexOf('#') + 1);
      type3 = "class";
    } else {
      selector1 = selector.slice(selector.indexOf('#') + 1, selector.indexOf('.'));
      selector2 = selector.slice(selector.indexOf('.') + 1);
      type3 = "id";
    }
    type = "multi";
    type2 = "both";

  }

  switch(type) {
    case "tag":
      var arr = document.getElementsByTagName(selector);

      for (var i = 0; i <  arr.length; i++) {
        elements.push(arr[i]);
      }
      break;
    case "id":
      var element = document.getElementById(selector1);
      elements.push(element);
      break;
    case "classs":
      var arr = document.getElementsByClassName(selector1);
      for (var i = 0; i < arr.length; i++) {
        elements.push (arr[i])
      }
      break;
    case "multi":
      var classElement = document.getElementsByClassName(selector1);
      var tagElement = document.getElementsByTagName(selector2);
      if (tagElement.length < 2 && type2 != "both") {
        elements.push(tagElement[0]);
      } else if (type2 === "class") {
        for (var i = 0; i < classElement.length; i++) {
          if (classElement[i].tagName === selector2) {
            elements.push(classElement[i]);
          }
        }
      } else if (type2 === 'id') {
        elements.push(document.getElementById(selector1));
      } else if (type2 === 'both') {
          if (type3 === 'id') {
            elements.push(document.getElementById(selector1));
          } else if (type3 === 'class') {
            elements.push(document.getElementsByClassName(selector1)[0]);

          }
      }
      break;
    default:
      console.log("default");
  };


  return elements;
}

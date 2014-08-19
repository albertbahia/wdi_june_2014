var $ = function (selector) {
  var elements = [];
  // Variable to determine if beginning of query is tag, class, or ID
  selectorArray = selector.split('');
  // Results to be pushed into the element array
  var elementHolder;
  // Array to divide up the different query perameters
  var multipleSelectorArray = [];
  // Variable that is set to true if not just a Tag lookup
  var notJustElement = false;
  for (var i = 0; i < selectorArray.length; i++) {
    if (selectorArray[i] === '.' || selectorArray[i] === '#') {
      notJustElement = true;
    }
  }
  if (notJustElement === false) {
    // Deal with Tag name lookups
    elementHolder = document.getElementsByTagName(selector);
    for (var j = 0; j < elementHolder.length; j++) {
      elements.push(elementHolder[j]);
    }
  } else {
    // Deal with straight up class lookups
    if (selectorArray[0] === '.') {
      selectorArray.shift();
      classLookup = selectorArray.join('');
      elementHolder = document.getElementsByClassName(classLookup);
      for (var h = 0; h < elementHolder.length; h++) {
        elements.push(elementHolder[h]);
      }
    // Deal with straight up ID lookups
    } else if (selectorArray[0] === '#') {
        selectorArray.shift();
        IdLookup = selectorArray.join('');
        element = document.getElementById(IdLookup);
        elements.push(element);
    // Deal with an element specified by an ID
    } else if (selectorArray.indexOf('#') > 0 && selectorArray.indexOf('.') < 0 ) {
        multipleSelectorArray = selector.split('#');
        var idElement = document.getElementById(multipleSelectorArray[1]);
        if (idElement.nodeName.toLowerCase() === multipleSelectorArray[0]) {
          elements.push(idElement);
        }
    // Deal with an element specified by a class
    } else if (selectorArray.indexOf('.') > 0 && selectorArray.indexOf('#') < 0 ) {
        multipleSelectorArray = selector.split('.');
        elementHolder = document.getElementsByClassName(multipleSelectorArray[1]);
        for (var k = 0; k < elementHolder.length; k++) {
          if (elementHolder[k].nodeName.toLowerCase() === multipleSelectorArray[0]) {
            elements.push(elementHolder[k]);
          }
        }
    // Deal with an element specified by a class and an id (in either order)
    } else if (selectorArray.indexOf('#') > 0 && selectorArray.indexOf('.') > 0) {
        multipleSelectorArray = selector.split(/[#.]+/);
        // Deal with a class specified by an ID
        if (selectorArray.indexOf('#') > selectorArray.indexOf('.')) {
          elementHolder = document.getElementsByClassName(multipleSelectorArray[1]);
          for (var l = 0; l < elementHolder.length; l++) {
            if (elementHolder[l].getAttribute('id') === multipleSelectorArray[2] &&
                elementHolder[l].nodeName.toLowerCase() === multipleSelectorArray[0]) {
                  elements.push(elementHolder[l]);
            }
          }
        // Deal with an ID speficied by a class
        } else {
          elementHolder = document.getElementById(multipleSelectorArray[1]);
            if (elementHolder.nodeName.toLowerCase() === multipleSelectorArray[0]) {
                elements.push(elementHolder);
            }
        }
    }
  }
  return elements;
};

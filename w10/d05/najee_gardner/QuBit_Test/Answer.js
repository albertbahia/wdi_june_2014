var $ = function (selector) {
  var elements = [];

  var selectorArray = parseSelector(selector);

  for (var i = 0; i < selectorArray.length; i++) {
    if (selectorArray[i].match(/[^.#]/) && selectorArray[i] === selectorArray[0]) {
      elements = document.getElementsByTagName(selectorArray[0]);
    } else if (selectorArray[i].match(/[#]/)) {
      if (selectorArray[0].match(/[#]/))
        elements = [document.getElementById(selectorArray[i + 1])];
      else {
        for (var j = 0; j < elements.length; j++) {
          if (elements[j].getAttribute('id') === selectorArray[i + 1]) {
            elements = 
          }
        }
      }
      return elements;
    } else if (selectorArray[i].match(/[.]/)) {

      if (selectorArray[0].match(/[.]/)) {
        elements = document.getElementsByClassName(selectorArray[i + 1])
      } else {
        var newEls = [];

        for (var k = 0; k < elements.length; k++) {
          if (elements[k].getAttribute('class')) {
            var classes = elements[k].getAttribute('class').split(' ');

            if ( classes[0] === selectorArray[i + 1] || classes[1] === selectorArray[i + 1] ) {
              newEls.push(elements[k]);
            }
          }
        }

        elements = newEls;
      }
    }
  }

  return elements;
}

function parseSelector(selector) {
  var selectorArray = [];
  var word = '';

  for (var i = 0; i < selector.length; i++) {
    if (selector[i] !== '.' && selector[i] !== '#') {
      word += selector[i];
    } else {
      selectorArray.push(word);
      selectorArray.push(selector[i]);
      word = '';
    }
  }
  selectorArray.push(word);

  if (selector[0].match(/[.#]/)) {
    selectorArray.shift();
  }

  return selectorArray;
}

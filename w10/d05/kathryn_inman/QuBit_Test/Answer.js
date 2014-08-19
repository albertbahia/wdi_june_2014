var $ = function (selector) {
  var elements = [];
  var classCharIndex = selector.indexOf('.');
  var idCharIndex = selector.indexOf('#');
  var pushIn = function(array) {
    for (var i = 0; i < array.length; i++) {
      elements.push(array[i]);
    }
  };

  // Neither . nor #
  if (classCharIndex == -1 && idCharIndex == -1) {
    var byTag = document.getElementsByTagName(selector);
    pushIn(byTag);
  // Only .
  } else if (classCharIndex != -1 && idCharIndex == -1) {
    var tagSelector = selector.slice(0, classCharIndex);
    var classSelector = selector.slice(classCharIndex+1);

    if (classCharIndex != 0) {    // if there's a tag before the class name
    var tagged = document.getElementsByTagName(tagSelector);
      for (var i = 0; i < tagged.length; i++) {
        console.log(tagged[i].className.split().indexOf(classSelector));
        console.log(tagged[i].className.split());
        if (tagged[i].className.split().indexOf(classSelector) != -1) {
          elements.push(tagged[i]);
        }
      };

    } else {
    var byClass = document.getElementsByClassName(classSelector);
    pushIn(byClass);
    }

  // Only #
  } else if (idCharIndex != -1 && classCharIndex == -1) {
  // Both
  } else if (classCharIndex != -1 && idCharIndex != -1) {
  }

  // console.log(elements);
  return elements;
}; // ends $ fxn











// $("div")

// $("img.some_class"),
// $("#some_id"),
// $(".some_class"),
// $("input#some_id"),
// $("div#some_id.some_class"),
// $("div.some_class#some_id")

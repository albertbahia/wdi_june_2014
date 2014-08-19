
// This function will return DOM elements given a CSS selector
// Immitating jQuery & document.querySelector/document.querySelectorAll fxns

var $ = function (selector) {
  var elements = [];

  if (selector.indexOf('.') > 0) {            //class
    elsArray = document.getElementsByClassName(selector);
    for (var i = 0; i < elsArray.length; i++) {
      if (elsArray[i] === selector) {
        elements.push(elsArray);
      }
    }
  } 

  //   else if (selector.indexOf('#') > 0) {     //id
  //   console.log(selector);
  //   element = document.getElementById("selector");
  //   elements.push(element);
  // }
  //
  // else {                                    //tag name+
  //   console.log(selector);
  //   elementArray = document.getElementsByTagName(selector);
  //   // find correct index
  //   for (var i = 0; i < elementArray.length; i++) {
  //     if (elementArray[i] === selector) {
  //       elements.push(element[]);
  //     }
  //   }
  // }
  return elements;
  console.log(elements);
}

//// Use:
// .getElementsByTagName() => returns array of nodes
// .getElementById() => returns one element
// .getElementsByClass() => array of nodes



//// Answers:
// D: find by class
// $('.some_class')

// C: find by ID
// $('#some_id')

// A: find by tag
// $('div')

// B: find by tag with class
// $('img.some_class')

// E: find by tag with ID
// $('input#some_id')

// F: find by tag with ID and class
// $('div#some_id.some_class')

// G: find by tag with class and ID
// $('div.some_class#some_id')




//// Call the function?
// document.$('selector')

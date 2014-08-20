var $ = function (selector) {
  var elements = [];
  var firstCharOfSelector = selector.split('')[0];
  var indexOfDot = selector.indexOf('.');
  var indexOfHash = selector.indexOf('#');


  // The First selector is a class
  if ( selector.indexOf('.') === 0 ) {
  	selectorWithoutDot = selector.substring(1);
  	elements = (document.getElementsByClassName(selectorWithoutDot));

  // Selector has one class selector after the first selector	
  } else if ( selector.indexOf('.') > 0 || selector.indexOf('#') < 0 ) {
  	// var firstSelector = "";
  	// var classSelector = "";
  	// var idSelector = "";


  	for (i = 0; i < indexOfDot; i++ ) {    // get first selector with tag
  		firstSelector = "" + selector[i];
  	}
  	for ( i = indexOfDot; i < indexOfHash; i++ ) {
  		classSelector = "" + selector[i];
  	}

  	firstElement = document.getElementsByTagName(firstSelector);
  
  	console.log(firstElement);
  	// debugger;
  	elements.push(firstElement.getElementsByClassName(classSelector));

  }

  // The First selector is an Id
  if ( selector.indexOf('#') === 0 ) {
  	selectorWithoutHash = selector.substring(1);
  	elements.push(document.getElementById(selectorWithoutHash));
  }

  // The First selector is Not Class or ID
  if ( firstCharOfSelector !== "." && firstCharOfSelector !== "#" ) {
  	elements = document.getElementsByTagName(selector);
  }
// debugger;
 	
  return elements;
}

/// Call this function
//  $(selector)  which is eqievalence to

// 		$("div") - Should return 2 DIVs
// X 	$("img.some_class") - Should return 1 IMG
// 		$("#some_id") - Should return 1 DIV
// 		$(".some_class") - Should return 1 DIV and 1 IMG
// 		$("input#some_id") - Should return an empty array
// X	$("div#some_id.some_class") - Should return 1 DIV
// X	$("div.some_class#some_id") - Should return 1 DIV

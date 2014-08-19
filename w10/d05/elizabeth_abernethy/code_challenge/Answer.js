var $ = function (selector) {
  var elements = [];

    // --  split up selector element into CSS parts
    //var splitSelector = selector.match(/([^a-zA-z])/g); // returns ONLY symbols
    //var splitSelector = selector.split(/([^a-zA-z])/); // returns words and symbols separately
    //var splitSelector = selector.split(/([.#])/);

    // -- replace CSS selectors with , + selector, split by commas
    // var replaceDot = selector.replace(/./g, ',.');
    // var replaceHash = selector.replace(/#/g, ',#');
    // var splitSelector = selector.split(',');

    // var selector = $('div.some_class#some_id');
    // selector.replace('#()', '');
    // var addCommas = selector.split('.').join(',.').split('#').join(',#');
    // var splitByCommas = selector.split(', ');
    
    if (selector.indexOf('#') > 0)


  return elements;
};

// pass in a jQuery selector > return results of that selector
// ** "faking" jQuery with vanilla JavaScript to grab DOM elements **

// must work for:
// ---- tag name
// ---- tag + class
// ---- id
// ---- class
// ---- tag + id
// ---- tag + id + class
// ---- tag + class + id


// ---- take a selector tag > break it into pieces > put into elements array
// ---- loop over array, find all corrrect pieces
// ---- use first element as parent of next index value
// ===== (ex: find div in document, then #some_id in div, etc.)


// 1. Check for an id (#) > if id is present return that object
// ----- ISSUE: input#some.id != real, will return <div>, not empty

// 2. Check for a class (.) > if class is present, look for parent + look for id

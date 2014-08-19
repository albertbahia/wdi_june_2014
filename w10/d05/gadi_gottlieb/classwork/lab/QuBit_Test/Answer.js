var $ = function (selector) {
  var elements = [];
  var element = document.getElementsByTagName(selector);
  elements.push(selector);

  ////////////////////
  // Your code here //
  ////////////////////

  return elements;
}
$('div');
$('div');

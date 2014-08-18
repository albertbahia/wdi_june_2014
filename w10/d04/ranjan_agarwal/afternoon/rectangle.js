// Rectangle class
// 
// height
// width
// area()
// perimeter()
// Person class

var Rectangle = function(height, width) {
  this.height = height;
  this.width = width;
}

Rectangle.prototype.area = function() {
  return this.width * this.height;
}

Rectangle.prototype.perimeter = function() {
  return 2 * (this.width + this.height);
}

var rect = new Rectangle(5,4);

// function Rectangle(height,width) {
//   this.height = height;
//   this.width = width;
//   this.area
// }
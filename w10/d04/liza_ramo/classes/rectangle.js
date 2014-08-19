//////////////////////
// Rectangle class //
////////////////////
function Rectangle(height, width) {
  this.height = height;
  this.width = width;
}

Rectangle.prototype.area = function() {
  var calcArea = this.height * this.width;
  return calcArea;
};

Rectangle.prototype.perimeter = function() {
  var calcPerimeter = (this.height * 2) + (this.width * 2);
  return calcPerimeter;
};

var lizaRectangle = new Rectangle(5, 3);
lizaRectangle.area();
lizaRectangle.perimeter();

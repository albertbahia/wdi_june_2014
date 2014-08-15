function Rectangle(height, width) {
  this.height = height;
  this.width = width;
}

Rectangle.prototype.area = function() {
  return this.height * this.width;
};

Rectangle.prototype.perimeter = function() {
  return ((this.height * 2) + (this.width * 2));
};

var rectangle = new Rectangle(10, 5);
// area = 50
// perimeter = 30

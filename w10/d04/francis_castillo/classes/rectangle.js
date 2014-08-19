function Rectangle (height, width) {
  this.height = height;
  this.width  = width;
}

Rectangle.prototype.area = function() {
  return this.height * this.width;
};

Rectangle.prototype.perimeter = function() {
  return this.area() * 2;
};

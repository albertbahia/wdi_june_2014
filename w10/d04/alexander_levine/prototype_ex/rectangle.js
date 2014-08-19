function Rectangle(height, width) {
  this.height = height;
  this.width = width;
}

Rectangle.prototype.area = function() {
  var area = (this.height) * (this.width);
  return area;
};

Rectangle.prototype.perimeter = function() {
  var perimeter = (this.height * 2) + (this.width * 2);
  return perimeter;
};

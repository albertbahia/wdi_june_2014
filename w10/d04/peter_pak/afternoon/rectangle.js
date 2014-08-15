var Rectangle = function(height, width) {
  this.height = height;
  this.width = width;
};

Rectangle.prototype.area = function() {
  var area = this.height * this.width;
  return area;
};

Rectangle.prototype.perimeter = function() {
  var p = (2*this.height) + (2*this.width);
  return p;
};


var rec = new Rectangle(3, 5);
rec.height;
rec.width;
rec.area();
rec.perimeter();

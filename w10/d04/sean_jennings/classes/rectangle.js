var rectangle = function(height,width) {
  this.height = height;
  this.width = width;

  this.area = function() {
    return width * height;
  }

  this.perimeter = function() {
    return (2 * width) + (2 * height);
  }
};

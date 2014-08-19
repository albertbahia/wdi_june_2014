// * Rectangle class
//   * height
//   * width
//   * area()
//   * perimeter()

var recFxns = {
  area: function() {
    var area = this.height * this.width;
    return area;
  },
  perimeter: function() {
    var perim = this.height*2 + this.width*2
    return perim
  }
};

function Rectangle(height, width) {
  this.height = height;
  this.width = width;
};

Rectangle.prototype = recFxns;

var rec = new Rectangle(3, 4);

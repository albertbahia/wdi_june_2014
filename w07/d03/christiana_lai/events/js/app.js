$(function() {
  console.log("JavaScript loaded >>");
  $('h1').click(headingClick);
  $('p').mouseenter(paragraphHover);
});

  var headingClick = function() {
    var para = $(this);
    if (para.css('color') === 'rgb(255, 0, 0)') {
      para.css('color', 'rgb(0, 0, 0)');
    } else {
      para.css('color', 'rgb(255, 0, 0)');
    }
    // alert('I heard a click!');
  }

  var paragraphHover = function() {
    var para = $(this);
    if (para.css('color') === 'rgb(0, 0, 255)') {
      para.css('color', 'rgb(0, 0, 0)');
    } else {
      para.css('color', 'rgb(0, 0, 255)');
    }
    // alert('You hovering, bro?');
  }

$(function() {
  console.log("Loaded bro.");
  $('h1').on('click', headingClick);
  $('p').on('click', paragraphClick);
});

var headingClick = function() {
  $(this).css('color', 'red');
}

var paragraphClick = function() {
  var para = $(this);
  if (para.css('color') === 'rgb(0, 0, 255)') {
    para.css('color', 'black');
  } else {
    para.css('color', 'blue');
  }
}


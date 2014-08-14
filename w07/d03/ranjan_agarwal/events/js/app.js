$(function() {
  console.log('Loaded');
  $('h1').on('click', headingClick);
  $('p').on('click', paragraphClick);
});

var headingClick = function () {
  $(this).css('color', 'red');
}

var paragraphClick = function() {
  var para = $(this);
  debugger;
  if (para.css('color') === 'rgb(0, 0, 255)') {
    para.css('color', 'rgb(0, 0, 0)');
  } else {
    para.css('color','rgb(0, 0, 255)');
  }
  // $(this).toggleClass('blue');
}

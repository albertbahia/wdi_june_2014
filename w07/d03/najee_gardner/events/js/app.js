$(function() {
  console.log('Loaded, bro.')

  $('h1').on('click', headingClick);

  $('p').on('click', paragraphClick);
});

var headingClick = function() {
  $(this).css('color', 'red');
  // alert('I heard a click!');
};

var paragraphClick = function() {
  var para = $(this);

  console.log(para.attr('style'));

  if (para.attr('style') === 'color: blue;') {
    para.css('color', 'black');
  } else {
    para.css('color', 'blue');
  }
  // alert('I heard a click too!');
};

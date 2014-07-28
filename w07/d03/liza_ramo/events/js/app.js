$(function() {
  console.log('Loaded bro.');
  $('h1').on('click', headingClick);
  $('p').click(paragraphClick);
});

var headingClick = function() {
  $(this).css('color', 'red');

  // alert('The title has been clicked');
};

var paragraphClick = function() {
  var para = $(this);
  // debugger;
  // console.log(para.css('color'));
  if (para.css('color') === 'rgb(0, 0, 255)') {
    para.css('color', 'black');
  } else {
    para.css('color', 'blue');
  }
};

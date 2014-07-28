$(function(){
  console.log('loaded bro');

  // .on('whatEvent', funtion() {})
  $('h1').on('click', headingClick);
  $('p').mousemove(paragraphClick);
  // $('p').on('mousemove', paragraphGreen);

});


var headingClick = function() {
  $(this).css('color', 'red');
};

var paragraphClick = function() {
  var colors = ['blue', 'red', 'green', 'black'];
  var para = $(this);
  if (para.css('color') === 'rgb(0, 0, 255)') {
    para.css('color', 'green');
  } else if (para.css('color') === 'rgb(0, 0, 0)') {
    para.css('color', 'blue');
  } else {
    para.css('color', 'black');
  }

};

var paragraphGreen = function() {
  $(this).css('color', 'green');
};

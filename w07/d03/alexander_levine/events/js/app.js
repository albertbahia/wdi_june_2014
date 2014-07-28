$(function() {
  console.log("Loaded bro.");
  $('h1').on('click', headingClick)
  $('p').on('click', paragraphClick);
});

var headingClick = function() {
  var para = $(this);

  if (para.css('color') === 'rgb(255, 0, 0)') {
    para.css('color', 'black');
  } else {
    para.css('color', 'red');
  }
  // alert('I heard a click!');
}

var paragraphClick = function() {
  $(this).css('color', 'blue');
  // alert('Paragraph click!');
}

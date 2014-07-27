$(function() {
  console.log('Loaded, bro.');

  createDivs();
  $('#set-color').on('click', setColor);
  $('.square').on('click', toGreen);
});


// Make the Pixart canvas
var createDivs = function() {
  for (var i = 0; i < 20; i++) {
    $('<div>').addClass('square').appendTo('body');
  };
};


function setColor() {
  var color = $('#color-field').val();
  $('.brush').css('background', color);
}

var toGreen = function() {
  var color = $('#color-field').val();
  $(this).css('background-color', 'green');
};

$(function() {
  console.log('dude, we\'re loaded');
  $('#set-color').on('click', setColor);
  createDivs(8000);
  $('.square').on('mouseover', setSquareColor);
});

var setColor = function() {
  var input = $('#color-field');
  $('.brush').css('background', input.val());
  console.log($('.brush').css('background'));

}

function createDivs(num) {
  for (i = 0; i < num; i++) {
    $('<div class="square">').appendTo('body');
  }
}

var setColorGreen = function() {
  $(this).css('background', 'green');
}

var setSquareColor = function() {
  var input = $('#color-field');
  $(this).css('background', input.val());
}

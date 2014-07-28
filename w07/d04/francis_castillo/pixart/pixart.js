$(function() {
  console.log('Loaded bro!');
  $('#set-color').click(changeColor);
  divCreation();
  $('.square').mouseover(changeSquareTo);
});

function changeColor () {
  var newColor = $('#color-field').val();
  $('.brush').css('background-color', newColor);
}

function changeSquareTo () {
  var newColor = $('#color-field').val();
  $(this).css("background-color", newColor);
}

var divCreation = function() {
  for (var i = 0; i < 8000; i++) {
    $('<div>').addClass('square').appendTo('body');
  }
};

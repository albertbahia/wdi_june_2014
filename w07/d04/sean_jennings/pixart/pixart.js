$(function () {
  var colorInput;

  var $button = $('#set-color').on('clickb', function () {
    var $brush = $('.brush');
    var colorInput = $('#color-field').val();
    $brush.css('background', colorInput);
  });

  for (var i = 0; i < 8000; i++) {
    var $div = $('<div>').addClass('square').appendTo('body');
  }

  $('.square').on('mouseover', function () {
    var colorInput = $('#color-field').val();
    $(this).css('background', colorInput);

  });
});

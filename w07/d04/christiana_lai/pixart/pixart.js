$(function() {
  console.log("JavScript is loaded >>");
  $('#set-color').on('click', changeColor);
  newDiv();
});

  var changeColor = function() {
    var color = $('#color-field').val();
    var square = $('.square');
    $('.brush').css('background', color);
    $('.square').mouseover(function() {
      $(this).css('background', color);
    });
  };

    var newDiv = function() {
    for (var i = 0; i < 500; i++) {
      $newdiv = $('<div class="square"/>');
      $('body').append($newdiv);
    }
  };

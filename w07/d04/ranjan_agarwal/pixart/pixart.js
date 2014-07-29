$(function() {
  console.log('Sup dawg');
  $('#set-color').click(changeColor);
  newDiv();
});

var changeColor = function() {
  var color = $('#color-field').val();
  var box = $('.square');
  $('.brush').css('background', color);
  $('.square').mouseover(function() {
    $(this).css('background', color);
  });
  // var clickChangeColor = function() {
  //   console.log('hi');
  //   box.hover(function() {
  //     box.css('background', color);
  //   })
  // }
}

var newDiv = function() {
    for (var i = 0; i < 8000; i++) {
        var $newdiv = $('<div/>', {
            "class": "square"
        });
        $('body').append($newdiv);
    }
}

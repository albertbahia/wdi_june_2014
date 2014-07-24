$(function() {
  console.log('Loaded, bro.');

  //make divs on page using JS
  makeDivs();

  $('#set-color').on('click', setColor);
  $('.square').on('mouseover', setSquare);

});

var setColor = function() {
  var brush = $('.brush');
  var input = $('#color-field');
  $(brush).css('background', input.val());
};

var makeDivs = function(){
  for (var i = 0; i < 8001; i++) {
    var div = document.createElement("div");
    div.className = 'square';
    document.body.appendChild(div);
  };
};

var setSquare = function(){
  var color = $('.brush').css('background-color');
  $(this).css('background', color);
};
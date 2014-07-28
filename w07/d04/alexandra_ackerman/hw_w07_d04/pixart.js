$(function() {
  console.log('Loaded, bro.');

  //make divs on page using JS
  makeDivs();

  $('#set-color').on('click', setColor);
  $('.square').on('mouseover', setSquare);
  $('.swatch').on('click', getSwatchColor);
});

var setColor = function() {
  var brush = $('.brush');
  var input = $('#color-field');
  $(brush).css('background', input.val());
  addToSwatch();
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

var addToSwatch = function () {
  $('#2').css('background', $('#1').css('background'));
  $('#1').css('background', $('#0').css('background'));
  $('#0').css('background', $('.brush').css('background'));
};

var getSwatchColor = function () {
  var color = $(this).css('background');
  $('.brush').css('background', color );
};
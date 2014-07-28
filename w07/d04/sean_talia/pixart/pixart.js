$(function() {
  console.log('Loaded bro.');
  $('#set-color').click(getColorFromButton);
  addDivs();
  $('.square').mouseover(changeBoxColor);
  $('.swatch').click(getColorFromSwatch);
});

function getColorFromButton(){
  var color = $('#color-field').val();
  $('.brush').css('background', color);
  changeSwatch();
}

function changeSwatch() {
  $('#three').css('background', $('#two').css('background'));
  $('#two').css('background', $('#one').css('background'));
  $('#one').css('background', $('.brush').css('background'));
};

function addDivs(){
  for(var i = 0; i < 8000; i++){
    var newDiv = $('<div class="square">');
    $('body').append(newDiv);
  };
};

function changeBoxColor(){
  var color = $('.brush').css('background');
  $(this).css('background', color);
};

function getColorFromSwatch() {
  var color = $(this).css('background');
  $('.brush').css('background', color);
}

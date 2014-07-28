$(function() {
  console.log('Loaded, bro.');

  createDivs();
  $('#set-color').on('click', setColor);
  // $('.square').on('click', toGreen); - changes to Green
  $('.square').on('mouseover', paint);
});


// Make the Pixart canvas
var createDivs = function() {
  for (var i = 0; i < 8000; i++) {
    $('<div>').addClass('square').appendTo('body');
  };
};


function setColor() {
  var color = $('#color-field').val();
  $('.brush').css('background', color);
}

var paint = function() {
  var color = $('.brush').css('background-color');
  $(this).css('background-color', color);
};

// Step 4 in exercise: change all divs to green on click
// var toGreen = function() {
//   var color = $('#color-field').val();
//   $(this).css('background-color', 'green');
// };

// function swatchColor() {
//   var color = $(this).css('background');
//   $('.brush').css('background-color', color);
// }
// 
// function

$(function() {
  console.log('Hello there.');
  $('#set-color').click(setColor);
  $('.square').click(clickGreen)
});

// Step 1 - Change Color of 'brush' box
function setColor(){
 var color = $('#color-field').val();
 $('.brush').css('background', color);
 }

function createElement() {
var body = document.createElement('body');
body.id = 'body';
var div = document.createElement('div');
div.appendTo(body);
}

// Step 2 - Create 20 divs of the 'square class'
// function createSquareClass() {
//   for (var i = 0; i < 20; i++) {
//     $('<div class="square">').appendTo('body');
//   }
// }

// Step 4 - each square changes to green on click
var clickGreen = function() {
var color = $('#color-field').val();
$(this).css('background-color', 'green');
}


// Step 6 - Modify divs from 20 to 8000
function createSquareClass() {
  for (var i = 0; i < 8000; i++) {
    $('<div class="square">').appendTo('body');
  }
}

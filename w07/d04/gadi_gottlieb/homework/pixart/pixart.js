$(function() {
  console.log('Loaded Bro.');
  // Changes color choice
  $('#set-color').on('click', colorChange);

  // adds the paint board
  addSquares();

  // paints the board
  $('.square').mouseover(changeColorToBrush);

  // creates heading to clear board
  var clearBoard = $('<h2 class="clearBoard">').text("Clear Board");
  var brush = $('#brush3');
  brush.after(clearBoard);

  //actually clears the board
  $('.clearBoard').on('click', clearSquares);

  // change color on click of the square
  $('#brush2').on('click', colorChange)
});

var colorChange = function(){
  console.log('clicked');
  console.log($('#brush1'))
  var input = $('#color-field');
  var brush = $('#brush1');
  brush.css('background', input.val());
}

// creates the squares
var addSquares = function() {
    var $newdiv;
    for (var i = 0; i < 8000; i++) {
        $newdiv = $('<div class="square" />');
        $('body').append($newdiv);
    }
};

// Step 5
var changeColorToBrush = function(){
  var brush = $('#brush1').css('background');
  $(this).css('background', brush)
}

var clearSquares = function(){
  var square = $('.square');
  square.css('background', 'white');
}


  // paints the board Step 4
  // var changeColorToBrush = function(){
  // var brush = $('#brush1').css('background');
  // $(this).css('background', 'green')

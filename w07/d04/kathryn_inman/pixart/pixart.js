$(function() {
  console.log('locked n loaded');
  manyManyBoxes();
  makeSwatches();

  $('#set-color').on('click', setColor);
  $('.square').on('mouseover', paintBox);
});

function setColor() {
	var colorZero = $('.brush').eq(0).css('background-color');
	var colorOne = $('.brush').eq(1).css('background-color');
	$('.brush').eq(1).css({'background-color':colorZero});
	$('.brush').eq(2).css({'background-color':colorOne});	

	var colorChoice = $('#color-field').val();
	$('.brush').eq(0).css({'background-color':colorChoice});
};

function manyManyBoxes() {
	for (var squaresNum = 0; squaresNum < 64000; squaresNum++) {
		$('<div>').appendTo($('body')).addClass('square');
	}
};

function makeSwatches() {
	$('<div>').appendTo($('.controls')).addClass('brush');
	$('<div>').appendTo($('.controls')).addClass('brush');
}

function paintBox() {
	// console.log(this);
	var square = $(this);
	var newColor = $('.brush').eq(0).css('background-color');
	square.css({'background-color':newColor}); 
};
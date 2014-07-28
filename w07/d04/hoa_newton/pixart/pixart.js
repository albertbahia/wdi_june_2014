$(function(){
	$('#set-color').click(setColor);

	//create 20 squares
	for (i = 0; i < 8000; i++){
		$('<div>').addClass('square').appendTo('body')
	}

	//change an indisidual square color to green
	$('.square').mouseover(turnGreen)

	//change color by clicking color pitch box
	$('.color-pitch').click(changeColor)

})

function setColor(){
	var color = $('#color-field').val();
	$('.brush').css('background', color)
}

function turnGreen() {
	$(this).toggleClass('green')
}

function changeColor(){
	colorClass = $(this).css('background');
	$('.brush').css('background', colorClass);
	$('.square').mouseover(function(){
		$(this).css('background', colorClass)
	})
}
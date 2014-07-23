$(function() {
  console.log('Loaded, bro');
  $('#reload').on('click', startGame);

  startGame();
});


function startGame() {
  var gamePieces = $('.piece');

  $('.piece').on('click', turnRed);

};

var turnRed = function(){
  	var piece = $(this);
  	piece.addClass('red');
}



































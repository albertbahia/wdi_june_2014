$(function() {
  console.log('Loaded, bro');
  startGame();
});

var currentPlayer = 'red';

function startGame() {
  $('.piece').click(onlyChangeBottoms);
}


// changes the piece color of only the bottom most element in the
// connect four column
function onlyChangeBottoms() {
  var pieces = $(this).parent().children();

  // checking if piece has no color class from the end of my array
  // so that I may check for the bottom most elements first
  for (var i = pieces.length - 1; i > -1; i--) {
    if (!pieces.eq(i).hasClass('black') && !pieces.eq(i).hasClass('red')) {
      if ($(this).get(0) === pieces.get(i)) {
        $(this).addClass(currentPlayer);
        toggleTurn();
      }
      break;
    }
  }
}


function toggleTurn() {
  if (currentPlayer === 'red') {
    currentPlayer = 'black';
  } else {
    currentPlayer = 'red';
  }
}

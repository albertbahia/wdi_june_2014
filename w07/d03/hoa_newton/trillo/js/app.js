$(function() {
  console.log("Hi");
  $('.card').on('click', cardClick);
  $('.done').on('click', removeCard);
  $('.todo').on('click', finishCard);
  $('#new-card-button').on('click', createCard);

});

// When a card is clicked, console.log("A card is clicked.")
var cardClick = function() {
  var card = $(this);
  var cardText = card.text();
  console.log(cardText);
}

var removeCard = function() {
  console.log('remove');
  $(this).remove();
}

var finishCard = function() {
  console.log('finish');
  var doneList = $('#done-column ul.card-list');
  var card = $(this);

  // Update classes
  card.removeClass('todo');
  card.addClass('done');

  // Move to done list
  card.appendTo(doneList);

  // Update listeners
  card.off();
  card.on('click', removeCard);
}

var createCard = function() {
  var todoList = $('#todo-column ul.card-list');
  var input = $('#new-card-text');
  var card = $('<li>');

  // Add classes to card
  card.addClass('card todo');

  // Add text to card
  card.text(input.val());

  // Add listener to card
  card.on('click', finishCard);

  // Add card to todo list
  card.appendTo(todoList);

  // Clear the input box
  input.val('');
}

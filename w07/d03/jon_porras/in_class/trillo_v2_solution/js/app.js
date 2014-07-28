$(function() {
  console.log("Hi");
  $('.card').on('click', cardClick);
  $('.delete').on('click', removeCard);
  $('.finish').on('click', finishCard);
  $('#new-card-button').on('click', createCard);

});

// When a card is clicked, console.log("A card is clicked.")
var cardClick = function() {
  var card = $(this);
  var cardText = card.text();
  console.log(cardText);
}

var removeCard = function() {
  $(this).parent().remove();
}

var finishCard = function() {
  var doneList = $('#done-column ul.card-list');
  var card = $(this).parent();

  // Update classes
  card.removeClass('todo');
  card.addClass('done');

  // Move to done list
  card.appendTo(doneList);

  // Update listeners - irrelevant now because listeners are not on card
  // card.off();
  // card.on('click', removeCard);

  // Remove finish button
  $(this).remove();
}

var createCard = function() {
  var todoList = $('#todo-column ul.card-list');
  var input = $('#new-card-text');
  var card = $('<li>');

  // Add classes to card
  card.addClass('card todo');

  // Add text to card
  card.text(input.val());

  // Add buttons to card
  var finishButton = $('<span>').addClass('finish').text('Finish');
  var deleteButton = $('<span>').addClass('delete').text('X');
  finishButton.on('click', finishCard);
  deleteButton.on('click', removeCard);
  card.append(deleteButton).append(finishButton);

  // Add listener to card - irrelevant since cards don't have listeners anymore
  // card.on('click', finishCard);

  // Add card to todo list
  card.appendTo(todoList);

  // Clear the input box
  input.val('');
}

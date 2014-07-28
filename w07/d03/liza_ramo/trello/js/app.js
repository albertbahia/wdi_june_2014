$(function() {
  console.log("Hi");
  $('.card').click(cardClick);
  $('.done').on('click', removeCard);
  $('.todo').on('click', moveToDone);
  $('#new-card-button').on('click', addNewCard);
});

var cardClick = function() {
  var cardText = $(this).text();
  console.log(cardText);
};

var removeCard = function() {
  $(this).remove();
};

var moveToDone = function() {
  var doneList = $('#done-column ul.card-list')
  var card = $(this);

  // Update classes
  card.removeClass('todo');
  card.addClass('done');

  // Update listeners
  card.off();
  card.on('click', removeCard);

  // Moving to done list
  card.appendTo(doneList);
};

var addNewCard = function() {
  console.log('Create card');

  // Create a new card with the new-card-text
  var newCard = $('<li>').addClass('card todo');

  // Add text to the card
  var input = $('#new-card-text');
  newCard.text(input.val());

  // Add the card to todo class
  newCard.appendTo('#todo-column ul.card-list');

  // Update listener
  newCard.on('click', moveToDone);

  // Clear the input box
  input.val(""); 
};








//

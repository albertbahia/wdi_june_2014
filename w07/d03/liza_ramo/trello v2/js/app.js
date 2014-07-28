$(function() {
  console.log("Hi");
  $('.card').click(cardClick);
  // $('.done').on('click', removeCard);
  $('.delete').on('click', deleteCard);
  $('.finish').on('click', moveToDone);
  $('#new-card-button').on('click', addNewCard);

});

var cardClick = function() {
  var cardText = $(this).text();
  console.log(cardText);
};

var removeCard = function() {
  $(this).remove();
};

var deleteCard = function() {
  console.log('remove');
  var deleteButton = $('.delete');
  $(this).parent().remove();
};

var moveToDone = function() {
  var doneList = $('#done-column ul.card-list')
  var card = $(this).parent();

  // Update classes
  card.removeClass('todo');
  card.addClass('done');

  // Moving to done list
  card.appendTo(doneList);

  // Make the Finish button disappear
  this.remove();
};

var addNewCard = function() {
  console.log('Create card');
  console.log(this);

  // Create a new card with the new-card-text
  var newCard = $('<li>').addClass('card todo');

  // Add text to the card
  var input = $('#new-card-text');
  newCard.text(input.val());

  // Add the card to todo class
  newCard.appendTo('#todo-column ul.card-list');

  // Update listener
  // newCard.on('click', moveToDone);

  // Clear the input box
  input.val("");

  // Add the Finish and Remove buttons to new card
  // newCard.children(1).addClass('delete');
  var finishButton = $('<button>').text('Finish');
  var deleteButton = $('<button>').text('X');
  newCard.append(deleteButton).append(finishButton);

  // Update Listeners
  finishButton.on('click', moveToDone);
  deleteButton.on('click', deleteCard);
};



















//

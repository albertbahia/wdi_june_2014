$(function() {
  console.log("Hi");

  $('.card').on('click', cardClick);
  // $('.done').on('click', removeCard);
  // $('.todo').on('click', finishCard);
  $('.finish').on('click', finishCard);
  $('.delete').on('click', removeCard);
  $('#new-card-button').on('click', createCard);
});

var cardClick = function() {
  var cardText = $(this).text();
  console.log(cardText);
};

var removeCard = function() {
  $(this).parent().remove();
};

var finishCard = function() {
  var doneList = $('#done-column ul.card-list');
  var card = $(this).parent();

  // Update classes
  card.removeClass('todo');
  card.addClass('done');

  // Remove the finish button
  $(this).remove();

  // Move to done list
  card.appendTo(doneList);
};

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

  // Make buttons work
  finishButton.on('click', finishCard);
  deleteButton.on('click', removeCard);

  // Attach to card
  card.append(deleteButton).append(finishButton);

  // Add card to ToDo List
  card.appendTo(todoList);

  input.val('');
};

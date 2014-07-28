$(function() {
  console.log("Hi");

  $('.card').on('click', cardClick);
  $('.done').on('click', removeCard);
  $('.todo').on('click', finishCard);
  $('#new-card-button').on('click', createCard);
});

var cardClick = function() {
  var cardText = $(this).text();
  console.log(cardText);
};

var removeCard = function() {
  $(this).remove();
};

var finishCard = function() {
  var doneList = $('#done-column ul.card-list');
  var card = $(this);

  // Update classes
  card.removeClass('todo');
  card.addClass('done');

  // Update listeners
  card.off();
  card.on('click', removeCard);

  // Move to done list
  card.appendTo(doneList);
};

var createCard = function() {
  var todoList = $('#todo-column ul.card-list');
  var input = $('#new-card-text');
  var card = $('<li>')
  card.addClass('card todo');
  card.text(input.val());
  card.appendTo(todoList);
  card.on('click', finishCard);
  input.val('');
};

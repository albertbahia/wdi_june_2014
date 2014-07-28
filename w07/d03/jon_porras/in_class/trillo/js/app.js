$(function() {
  console.log("Hi");

  $('.card').click(cardClick);
  $('.done').click(cardRemove);
  $('.todo').click(moveToDone);
  $('#new-card-button').click(addToList);
});

// * As a user, I want cards in the done column to disappear when I click them, so I can keep my done column compact.
// * As a user, I want cards in the to do column to move to the done column when I click them, so I can keep track of my progress
// * As a user, I want to a new card to be added to the todo column when I enter text and click the 'Add Card' button, so I can add new things to my list



var cardClick = function() {
  var card = $(this);
  var cardText = card.text();
  console.log(cardText);
}

var cardRemove = function() {
  $(this).remove();
}

var moveToDone = function() {
  var doneList = $('#done-column ul.card-list');
  var card = $(this);
  card.removeClass('todo');
  card.addClass('done');
  card.off();
  card.click(cardRemove);
  card.appendTo(doneList);
}

var addToList = function() {
  var text = $('#new-card-text').val();
  var listItem = $('<li>').text(text).addClass('card todo');
  var todoList = $('#todo-column ul.card-list');
  listItem.click(moveToDone);
  $(todoList).append(listItem);
  $('#new-card-text').val('');
}

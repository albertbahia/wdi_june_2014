$(function() {
  console.log("Hi");
  $('.card').on('click', cardClick);
  $('.done').on('click', removeCard);
  $('#new-card-button').on('click', addCard);
  $('.finish').on('click', finishCard);
  $('.delete').on('click', removeCard);
});

  var cardClick = function() {
    var card = $(this);
    var cardText = card.text();
    console.log(cardText);
  };

  var removeCard = function() {
    console.log('remove');
    var deleteCard = $(this);
    deleteCard.parent().remove();
  };

  var finishCard = function() {
    console.log('finish');
    var doneList = $('#done-column ul.card-list');
    var finish = $(this);
    var card = finish.parent();
    card.removeClass('todo');
    card.addClass('done');
    card.off();
    finish.on('click', removeCard);
    finish.remove();
    card.appendTo(doneList);
  };

  var addCard = function() {
    var todoList = $('#todo-column ul.card-list');
    var input = $('#new-card-text');
    var card = $('<li>');
    card.addClass('card todo');
    card.text(input.val());
    card.on('click', finishCard);
    card.appendTo(todoList);
    input.val('');
    var finishButton = $('<span>').addClass('finish').text('Finish');
    var deleteButton = $('<span>').addClass('delete').text('X');
    finishButton.on('click', finishCard);
    deleteButton.on('click', removeCard);
    card.append(deleteButton).append(finishButton);
  };


// * As a user, I want cards in the done column to disappear when I click **the delete button** in them, so I can keep my done column compact.
// * As a user, I want cards in the to do column to move to the done column when I click **the finish button**, so I can keep track of my progress
// * As a user, I want cards in the to do column to disappear when I click **the delete button** in them, so I can remove cards I change my mind about them

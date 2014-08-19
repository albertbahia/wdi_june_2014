
// = require jquery
// = require jquery_ujs
// = require turbolinks
// = require_tree .

$(document).ready(function() {
  console.log("Oh hai. JS loaded.");
  fetchAndRenderCards();
  $('body').on('click', '.delete', removeCard);
  $('body').on('click', '#new-card-button', addCard);
  $('body').on('click', '.finish', finishCard);
  $('#todo-column').on('click', '.description', editCard);

  $('body').on('click', '.edit-button', updateCard);


})

// Fetch the existing cards from the DB and render them to the appropriate column:
  // AJAX GET request:
  // response = array of card objects
  // take that data and render it
function fetchAndRenderCards() {
  $.get("/cards")
    .done(renderCards)
    .fail(function(data) {console.log(data);});
}

function renderCards(cards) {
  cards.forEach(function(currentCard) {
    if (currentCard.completed === true) {
      renderCompleted(currentCard);
    } else {
      renderTodo(currentCard);
    }
  });
}

function renderCompleted(card) {
  var listItem = $('<li class="card done" data-id="' + card.id + '">');
  var deleteSpan = $('<span class="delete">X</span>');
  var descriptionSpan = $('<span class="description">' + card.description + '</span>');
  listItem.append(descriptionSpan).append(deleteSpan);
  $('#completed-column').find('.card-list').append(listItem);
}

function renderTodo(card) {
  var listItem = $('<li class="card todo" data-id="' + card.id + '">');
  var deleteSpan = $('<span class="delete">X</span>');
  var finishSpan = $('<span class="finish">Finish</span>');
  var descriptionSpan = $('<span class="description">' + card.description + '</span>');
  listItem.append(descriptionSpan).append(deleteSpan).append(finishSpan);
  $('#todo-column').find('.card-list').append(listItem);
}

var removeCard = function() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax('/cards/' + id, {type: 'DELETE'});
};

var addCard = function() {
  var newCardDescription = $('#new-card-text').val();
  $.post('/cards', {card: { description: newCardDescription, completed: false }})
    .done(renderTodo);
  $('#new-card-text').val('');
};

var finishCard = function() {
  var id = $(this).parent().data('id');
  var card = $(this).parent();
  var params = {
    card: {completed: true}
  };
  $.ajax('/cards/' + id, { type: 'PUT', data: params })
    .done( function(data) {
      card.remove();
      renderCompleted(data);
  });
};

var editCard = function() {
  var descriptionSpan = $(this);
  var editSpan = $('<span class="edit">');
  var editInput = $('<input type="text" class="edit-description">').val(descriptionSpan.text());
  var editButton = $('<button class="edit-button">').text('Update');
  editSpan.append(editInput).append(editButton);
  descriptionSpan.replaceWith(editSpan);
};

var updateCard = function() {
  var editSpan = $(this).parent();
  var card = $(this).closest('.card');
  var id = card.data('id');
  var newDescription = card.find('.edit-description').val();
  var params = { card: { description: newDescription } };

  // PUT request - - return is newcard json
  $.ajax('/cards/' + id, { type: 'PUT', data: params })
    .done( function(data) {
      // var editElement = cardElement.find('.edit');
      var descriptionSpan = $('<span class="description">').text(data.description);
      editSpan.replaceWith(descriptionSpan);
  });



};










//

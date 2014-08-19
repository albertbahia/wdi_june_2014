
// = require jquery
// = require jquery_ujs
// = require turbolinks
// = require_tree .

$(document).ready(function() {
  console.log("Oh hai. JS loaded.");
  fetchAndRenderCards();
  $('body').on('click', '.delete', removeCard);
  $('body').on('click', '#new-card-button', addCard);
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
  listItem.append(deleteSpan).append(card.description);
  $('#completed-column').find('.card-list').append(listItem);
}

function renderTodo(card) {
  var listItem = $('<li class="card todo" data-id="' + card.id + '">');
  var deleteSpan = $('<span class="delete">X</span>');
  var finishSpan = $('<span class="finish">Finish</span>');
  listItem.append(card.description).append(deleteSpan).append(finishSpan);
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








//

//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  console.log("Oh, hai.");

  fetchAndRenderCards();

  // event listeners
  $('button').click(createCard);
  $('body').on('click', '.delete', deleteCard);
  $('body').on('click', '.finish', finishCard);
  $('#todo-column').on('click', '.description', editCard);

  $('body').on('keypress', '.edit-description', function(event) {
    var theActualInputBox = this;
    if (event.which === 13) {
      updateCard.call(this);
    }
  });

  // example of keypress:
  // $('body').on('keypress', keypressHandler);

});

function createCard() {
  var newCardDescription = $('#new-card-text').val();
  $('#new-card-text').val('');

  $.post("/cards", {card: {description: newCardDescription, completed: false}})
    .done(renderTodo);
}

function fetchAndRenderCards() {
  $.get('/cards')
    .done(renderCards)
    .fail( function(data) { console.log(data);});
}

function renderCards(cards) {
  cards.forEach(function(currentCard) {
    if (currentCard.completed) {
      renderCompleted(currentCard);
    } else {
      renderTodo(currentCard);
    }
  });
}

function renderCompleted(card) {
  var listItem = $('<li class="card done" data-id="' + card.id + '" >');
  var deleteSpan = $('<span class="delete">X</span>');
  var descriptionSpan = $('<span class="description">' + card.description + '</span>');
  listItem.append(deleteSpan).append(descriptionSpan);
  $('#completed-column').find('.card-list').append(listItem);
}

function renderTodo(card) {
  var listItem = $('<li class="card todo" data-id="' + card.id + '" >');
  var deleteSpan = $('<span class="delete">X</span>');
  var finishSpan = $('<span class="finish">Finish</span>');
  var descriptionSpan = $('<span class="description">' + card.description + '</span>');
  listItem.append(descriptionSpan).append(deleteSpan).append(finishSpan);
  $('#todo-column').find('.card-list').append(listItem);
}

function deleteCard() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax("/cards/" + id, {type: "DELETE"});
}

function finishCard() {
  var oldCard = $(this).parent();
  var id = oldCard.data('id');
  var params = {
    card: { completed: true }
  };
  $.ajax('/cards/' + id, { type: "PUT", data: params })
    .done(function(card) {
      // Adding the card to the done column
      renderCompleted(card);

      // Removing the card from the to-do column
      oldCard.remove();
    });
}

function editCard() {
  var descriptionSpan = $(this);
  var editSpan = $('<span class="edit">');
  var editInput = $('<input type="text" class="edit-description">');
  // var editButton = $('<button class="edit-button">');
  editInput.val(descriptionSpan.text());
  // editButton.text('Update');
  editSpan.append(editInput);
  descriptionSpan.replaceWith(editSpan);
}

function updateCard(event) {
  var cardElement = $(this).closest('.card');
  var id = cardElement.data('id');
  var newDescription = cardElement.find('.edit-description').val();
  var params = {
    card: { description: newDescription }
  };

  $.ajax('/cards/' + id, { type: "PUT", data: params })
    .done(function(card) {
      cardElement.remove();
      renderTodo(card);
    });
}







///

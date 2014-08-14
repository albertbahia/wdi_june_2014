// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  console.log("Locked and Loaded.");
  fetchAndRenderCards();
  $('body').on('click', '.delete', deleteCard);
  $('body').on('click', '#new-card-button', createCard);
  $('body').on('click', '.finish', moveToDone);
  $('#todo-column').on('click', '.description', editToDo);
  $('body').on('keypress', '.edit-description', function(event) {
    var theActualInputBox = this;
    if (event.which === 13) {
      updateCard.call(theActualInputBox);
    }
  });
});

function fetchAndRenderCards() {
  $.get("/cards")
    .done(renderCards)
    .fail( function(data) { console.log(data); });
}

function renderCards(cards) {
  cards.forEach(function(currentCard) {
    if (currentCard.completed ) {
      renderCompleted(currentCard);
    } else {
      renderToDo(currentCard);
    }
  });
}

function renderCompleted(card) {
  var listItem = $('<li class="card done" data-id="' + card.id + '">');
  var deleteSpan = $('<span class="delete">X</span>');
  var descriptionSpan = $('<span class="description">' + card.description + '</span>');
  listItem.prepend(deleteSpan);
  listItem.append(descriptionSpan);
  $('#completed-column').find('.card-list').append(listItem);
}

function renderToDo(card) {
  var listItem = $('<li class="card todo" data-id="' + card.id + '">');
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

function createCard() {
  var input = $('#new-card-text').val();
  $('#new-card-text').val('');
  $.post("/cards", {card: {description: input, completed: false} })
    .done(renderToDo);
}

function moveToDone() {
  var oldCard = $this.parent();
  var id = oldCard.data('id');
  var params = {
    card: { completed: true }
  };
  $.ajax("/cards/" + id, { type: 'PUT', data: params })
    .done(function(card) {
      renderCompleted(card);
      oldCard.remove();
    });
}

function editToDo() {
  cardText = $(this).text();
  $(this).removeClass().addClass('edit').text('');
  var editSpan = $(this);
  var input = $('<input class="edit-description">').val(cardText).appendTo(editSpan);
}

function updateCard() {
  var card = $(this).closest('.card');
  var id = card.data('id');
  var newDescription = card.find('.edit-description').val();
  var params = {
    card: {
      description: newDescription
    }
  };
  $.ajax("/cards/" + id, { type: 'PUT', data: params })
    .done(function(newCard) {
      renderToDo(newCard);
      card.remove();
    });
}

function keyPressHandler(event) {
  console.log(event.which);
}

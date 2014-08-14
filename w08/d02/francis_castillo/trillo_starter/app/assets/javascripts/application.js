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
$(function() {
  console.log("Loaded Brah!");
  fetchAndRenderCards();
  // event listeners
  $('body').on('click', '.delete', deleteCard);
  $('body').on('click', '.finish', finishCard);
  $('#todo-column').on('click', '.description', editCard);
  $('#todo-column').on('keypress', '.edit-description',
    function(event) {
      if (event.which === 13) {
        updateCard.call(this);
      }
    }
  );
  $('#new-card-button').on('click', createCard);

});

function fetchAndRenderCards() {
  $.get("/cards")
    .done(renderCards)
    .fail( function(data) {
      console.log(data);});
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

  var listItem = $('<li class="card done" data-id="' + card.id + '">');
  var spanWrap = $('<span class="description">')
  spanWrap
  .text(card.description)
  .appendTo(listItem);
  var deleteSpan = $('<span class="delete">X</span>');
  listItem.prepend(deleteSpan);
  $('#completed-column').find('ul').append(listItem);

}

function renderTodo (card) {
  var listItem = $('<li class="card todo" data-id="' + card.id + '">');
  var spanDelete = $('<span class="delete">X</span>');
  var spanFinish = $('<span class="finish">Finish</span>');
  var spanWrap = $('<span class="description">')
  spanWrap
  .text(card.description)
  .appendTo(listItem);
  listItem.append(spanDelete)
    .append(spanFinish);

  $('#todo-column').find('.card-list').append(listItem);
}

function deleteCard () {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax('/cards/' + id, { type: 'DELETE'
  });
}

function createCard() {
  var userInputParams = {card: {description: $('#new-card-text').val(), completed: false}};

  $.post('/cards', userInputParams)
    .done(renderTodo);
  $('#new-card-text').val("");
}

function finishCard() {
  var finishSpan = $(this);
  var id = finishSpan.parent().data('id');

  $.ajax('/cards/' + id, {type: 'PUT', data: {card: {completed: true}}})
    .done(function(card) {
      finishSpan.parent().remove();
      renderCompleted(card);
      }
    )
}

function editCard() {
  var descriptionSpan = $(this);

  var editSpan = $('<span class="edit">');
  var editInput = $('<input type="text" class="edit-description">');
  // var editButton = $('<button class="edit-button">');

  editInput.val(descriptionSpan.text());
  // editButton.text('Update');

  editSpan.append(editInput)
  // .append(editButton);

  descriptionSpan.replaceWith(editSpan);
}

function updateCard() {

  var cardElement = $(this).closest('.card');
  var id = cardElement.data('id');

  var newDescription = cardElement.find('.edit-description')
    .val();

  var params = {
    card: {
      description: newDescription
    }
  };

  $.ajax('/cards/' + id, { type: "PUT", data: params })
    .done(function(card) {
      cardElement.remove();
      renderTodo(card);
    });

}

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
  fetchAndRenderCards();
  $('body').on('click', '.delete', deleteCard);
  $('body').on('click', '.finish', markAsFinished);
  $('body').on('click', '#new-card-button', addCard);
  $('#todo-column').on('click', '.description', editCard);
  // $('#todo-column').on('click', '.edit-button', updateCard);
  $('body').on('keypress', updateCard)
});

function deleteCard() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();

  $.ajax('/cards/' + id, {type: 'DELETE'})
}

function markAsFinished() {
  var card = $(this).parent();
  var params = { card: { completed: true } };

  $.ajax('/cards/' + card.data('id'), {type: 'PUT', data: params})
    .done(function(data) {
      card.remove();
      renderCompleted(data);
    });
}

function fetchAndRenderCards() {
  $.get('/cards')
    .done(renderCards)
    .fail(function(data) { console.log(data); });
}

function renderCards(cards) {
  cards.forEach(function(currentCard) {
    if (currentCard.completed) {
      renderCompleted(currentCard);
    } else {
      renderTodo(currentCard);
    }
  })
}

function renderCompleted(card) {
  var completedCard = $('<li class="card done" data-id="'+ card.id +'">')
                        .append('<span class="description">')
  completedCard.find('.description').text(card.description);

  var deleteSpan = $('<span class="delete">').text('X');

  completedCard.prepend(deleteSpan);

  $('#completed-column .card-list').append(completedCard);
}

function renderTodo(card) {
  var todoCard = $('<li class="card todo" data-id="'+ card.id +'">')
                  .append('<span class="description">');

  todoCard.find('.description').text(card.description);

  var deleteSpan = $('<span class="delete">').text('X');
  var finishSpan = $('<span class="finish">').text('Finish');

  todoCard.prepend(finishSpan).prepend(deleteSpan);

  $('#todo-column').find('.card-list').append(todoCard);
}

function addCard() {
  var description = $('#new-card-text').val();
  var card = { card: { description: description } };

  $.post('/cards', card)
    .done(renderTodo);

  $('#new-card-text').val('');

}

function editCard() {
  var descriptionSpan = $(this);

  var editSpan = $('<span class="edit">');
  var descriptionInput = $('<input class="edit-description" type="text">');

  descriptionInput.val(descriptionSpan.text());
  editSpan.append(descriptionInput);
  descriptionSpan.replaceWith(editSpan);
}

function updateCard() {
  if (event.which === 13) {
    var card = $('.edit-description').closest('.card');
    var descriptionInput = $('.edit-description');
    var newCard = { card: { description: descriptionInput.val() } };

    $.ajax('/cards/' + card.data('id'), { type: 'PUT', data: newCard })
      .done(function(data) {
        var descriptionSpan = $('<span class="description">');
        descriptionSpan.text(data.description);
        descriptionInput.parent().replaceWith(descriptionSpan);
      });
  }
}

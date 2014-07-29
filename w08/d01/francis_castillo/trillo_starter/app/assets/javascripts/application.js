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
  $('body').on('click', '.delete', deleteCard);
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
  var deleteSpan = $('<span class="delete">X</span>');
  listItem.prepend(deleteSpan);
  listItem.append(card.description);
  $('#completed-column').find('ul').append(listItem);

}

function renderTodo (card) {
  var listItem = $('<li class="card todo" data-id="' + card.id + '">');
  var spanDelete = $('<span class="delete">X</span>');
  var spanFinish = $('<span class="finish">Finish</span>');

  listItem.append(card.description)
    .append(spanDelete)
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

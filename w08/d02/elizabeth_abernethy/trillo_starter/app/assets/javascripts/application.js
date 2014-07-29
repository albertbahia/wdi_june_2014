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

// same thing as: $(function())
$(document).ready(function() {
  console.log('Loaded, bro.');
  fetchAndRenderCards();
  $('body').on('click', '.delete', deleteCard);
  $('body').on('click', '.finish', finishCard);
  $('#new-card-button').on('click', createCard);
})

// jQuery automatically converts JSON to an array
// Job: make an AJAX request => get data (response from server) - array of cards
function fetchAndRenderCards() {
  $.get("/cards")
    .done(renderCards)
    .fail(function(data) { console.log(data); });
}

// Iteration => separates cards by category with AJAX data from previous
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
  var descriptionSpan = $('<span class="description">' + card.description + '</span>');
  listItem.prepend(deleteSpan);
  listItem.append(descriptionSpan);
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

function deleteCard() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  // sends DELETE request to database
  $.ajax("/cards/" + id, {type: "DELETE"});
}

function createCard() {
  var newCardDescription = $('#new-card-text').val();
  $('#new-card-text').val('');
  $.post("/cards", {card: {description: newCardDescription, completed: false }})
    .done(renderTodo);
}

function finishCard() {
  var finishSpan = this;
  var id = $(this).parent().data('id');
  var params = {
    card: { completed: true }
  };
  // ajax + done promise to return data from the server and return it
  $.ajax('/cards/' + id, { type: "PUT" , data: params })
    .done(function(card) {
      // Adding the card to the done column
      renderCompleted(card);

      // Remove the card from the todo column
      $(finishSpan).parent().remove();
    });
}

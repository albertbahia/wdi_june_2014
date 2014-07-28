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
  $('body').on('click', '.finish', markAsFinished);
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
      renderToDo(currentCard);
    }
  });
}

function renderCompleted(card) {
  var listItem = $('<li class="card done">');
  var deleteSpan = $('<span class="delete">X</span>');
  listItem.prepend(deleteSpan);
  listItem.append(card.description);
  $('#completed-column').find('.card-list').append(listItem);
}

function renderToDo(card) {
  var listItem = $('<li class="card todo">');
  var deleteSpan = $('<span class="delete">X</span>');
  var finishSpan = $('<span class="finish">Finish</span>');
  listItem.append(card.description).append(deleteSpan).append(finishSpan);
  $('#todo-column').find('.card-list').append(listItem);
}

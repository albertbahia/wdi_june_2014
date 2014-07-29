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
  // $('body').on('click', '.finish', markAsFinished);
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


// function markAsFinished() {
//   var doneList = $('#done-column ul.card-list');
//   var id = $(this).parent().data('id');
//   var card = $(this).parent();
//
//   card.removeClass('todo');
//   card.addClass('done');
//
//   card.appendTo(doneList);
//   $(this).remove();
// }




// function createCard() {
// var todoList = $('#todo-column ul.card-list');
// var input = $('#new-card-text');
// var card = $('<li class="card todo">');
// var deleteSpan = $('<span class="delete">X</span>');
// var finishSpan = $('<span class="finish">Finish</span>');
// todoList.append(card);
// card.text(input.val());
// card.append(deleteSpan).append(finishSpan);

// sends POST request to the database
// $.ajax({
//   url: "/cards",
//   type: "POST",
//   data: { card:
//     {description: input.val(), completed: false } }
//   });
//
// // clears the 'What do you need to do?' box at the top
// input.val('');
// }

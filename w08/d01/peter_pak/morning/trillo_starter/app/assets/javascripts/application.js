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
//
// function renderCompleted(card) {
//   card.completed = true;
//   var listItem = $('<li class="card done">').text(card.description)
//   $('<span>').addClass('delete').text('X').prependTo(listItem)
//   listItem.appendTo('#completed-column').find('ul');
// }
$(function() {
  console.log('load load')
  fetchAndRenderCards();
  $('body').on('click', '.delete', deleteCard);
  $('body').on('click', '.finish', finishCard);
  $('body').on('click', '#new-card-button', createCard);
  // $('body').on('click', '.finish', function);
})


function fetchAndRenderCards() {
  $.get("/cards")
  .done(renderCards)
  .fail(function (data) { console.log(data)});
}


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
  var listItem = $('<li class="card done" data-id="'+card.id+'">');
  var deleteSpan = $('<span class="delete">X</span>');
  listItem.prepend(deleteSpan);
  listItem.append(card.description);
  var column = $('#completed-column').find('ul.card-list')
  listItem.appendTo(column);
}


function renderToDo(card) {
  var listItem = $('<li class="card todo" data-id="'+card.id+'">').text(card.description);
  var finishSpan = $('<span class="finish">Finish</span>');
  var deleteSpan = $('<span class="delete">X</span>');
  listItem.prepend(finishSpan).prepend(deleteSpan);
  var col = $('#todo-column').find('ul.card-list');
  listItem.appendTo(col);
}

function finishCard() {
  var doneList = $('#completed-column ul.card-list');
  var card = $(this).parent();

  // Update classes
  card.removeClass('todo');
  card.addClass('done');

  // Move to done list
  card.appendTo(doneList);

  // Remove finish button
  $(this).remove();
}

function deleteCard() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax({
    url: 'cards/' + id,
    type: 'delete'
  });
}

function createCard() {
  var input = $('#new-card-text');
  $.post('/cards',
    { card: {
        description: input.val(),
        completed: false
    }})
    .done(renderToDo);
  input.val('');
}

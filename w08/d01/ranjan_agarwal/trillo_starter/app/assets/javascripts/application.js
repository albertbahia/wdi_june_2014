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
  console.log('Hello');
  fetchAndRenderCards();
  $('body').on('click', '.delete', deleteCard);
  $('#todo-column').on('click', '.finish', cardDone);
  $('#new-card-button').on('click', createCard);
});

function fetchAndRenderCards() {
  $.get('/cards').done(renderCards).fail(function(data) {
    console.log(data);
  });
}

function renderCards(cards) {
  cards.forEach(function(currentCard) {
    if(currentCard.completed === true) {
      renderCompleted(currentCard);
    } else {
      renderToDo(currentCard);
    }
  });
}

function renderCompleted(card) {
  var listItem = $('<li data-id=' + card.id + ' class="card done">');
  var deleteSpan = $('<span class="delete">X</span>')
  listItem.append(deleteSpan).append(card.description);
  $('#completed-column').find('.card-list').append(listItem);
}

function renderToDo(card) {
  var listItem = $('<li data-id=' + card.id + ' class="card todo">');
  var deleteSpan = $('<span class="delete">X</span>');
  var finishSpan = $('<span class="finish">Finish</span>');
  listItem.append(card.description).append(deleteSpan).append(finishSpan);
  $('#todo-column').find('.card-list').append(listItem);
}


function deleteCard() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax("/cards/" + id, {type: "DELETE"});
}

function cardDone() {
  var id = $(this).parent().data('id');
  var doneList = $('#completed-column ul.card-list');
  var finish = $(this);
  var card = finish.parent();
  card.removeClass('todo');
  card.addClass('done');
  card.off();
  finish.on('click', deleteCard);
  finish.remove();
  card.appendTo(doneList);
  var cardInfo = {description: createCard.text(), completed: true};
  console.log(cardInfo);
  $.post( "/cards", { card: cardInfo })
  .done(function( data ) {
    console.log( "Data Loaded: " + data );
  });
}

function createCard() {
  var newCardDescription = $('#new-card-text').val();
  $('#new-card-text').val('');
  $.post( "/cards", { card: {description: newCardDescription, completed: false} })
  .done(renderToDo);
}

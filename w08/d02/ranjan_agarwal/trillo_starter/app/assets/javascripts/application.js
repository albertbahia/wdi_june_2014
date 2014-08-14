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
  $('body').on('click', '.finish', cardDone);
  $('#new-card-button').on('click', createCard);
  $('#todo-column').on('click', '.description', editCard);
  // $('body').on('keypress','.edit-description', updateCard);

  $('#new-card-text').keypress(function(event) {
    if(event.which == 13) {
      createCard();
    }
  });

  $('body').on('keypress','.edit-description', function(event) {
    var inputBox = this
    if (event.keyCode === 13) {
      updateCard.call(inputBox);
    }
  });

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
  var deleteSpan = $('<span class="delete">X</span>');
  var descriptionSpan = $('<span class="description">'+ card.description +'</span>');
  listItem.append(deleteSpan).append(descriptionSpan);
  $('#completed-column').find('.card-list').append(listItem);
}

function renderToDo(card) {
  var listItem = $('<li data-id=' + card.id + ' class="card todo">');
  var deleteSpan = $('<span class="delete">X</span>');
  var finishSpan = $('<span class="finish">Finish</span>');
  var descriptionSpan = $('<span class="description">'+ card.description +'</span>');
  listItem.append(descriptionSpan).append(deleteSpan).append(finishSpan);
  $('#todo-column').find('.card-list').append(listItem);
}


function deleteCard() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax("/cards/" + id, {type: "DELETE"});
}

function cardDone() {
  var id = $(this).parent().data('id');
  var finish = $(this);
  var params = {
    card: {completed: true}
  };

  $.ajax("/cards/" + id, {type: "PUT", data: params})
    .done(function(card) {
      // adding the card to the done column
      renderCompleted(card);
      // remove card from todo column
      $(card).parent().remove();
      $(finish).parent().remove();
    });

}

function createCard() {
  var newCardDescription = $('#new-card-text').val();
  $('#new-card-text').val('');
  $.post( "/cards", { card: {description: newCardDescription, completed: false} })
  .done(renderToDo);
}

function editCard() {
  var descriptionSpan = $(this);
  var editSpan = $('<span class="edit">');
  var editInput = $('<input type="text" class="edit-description" value="">').val(descriptionSpan.text());

  editSpan.append(editInput);
  descriptionSpan.replaceWith(editSpan);

  // var text = $(this).text();
  // var input = $('<input/>').attr({ type: 'text', value: text}).appendTo('li.todo');
  // $(this).remove();

}

function updateCard() {
    var oldCard = $(this).closest('.card');
    var cardInput = oldCard.find('.edit');
    var id = oldCard.data('id');
    var newDescription = oldCard.find('.edit-description').val();
    var params = {
      card: {description: newDescription}
    };

    $.ajax("/cards/" + id, {type: "PUT", data: params})
      .done(function(card) {
        cardInput.replaceWith(card.description);
      });

}

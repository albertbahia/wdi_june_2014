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
  $('#todo-column').on('click', '.description', editCardText);
  // $('#todo-column').on('click', '.edit-button', updateCard);
  $('body').on('keypress', '.edit-description', function(event) {
    if (event.which === 13) {
      updateCard.call(this);
    }
  });
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
  var descriptionSpan = $('<span class="description">').text(card.description);
  listItem.prepend(deleteSpan);
  listItem.append(descriptionSpan);
  var column = $('#completed-column').find('ul.card-list')
  listItem.appendTo(column);
}


function renderToDo(card) {
  var listItem = $('<li class="card todo" data-id="'+card.id+'">')
  var descriptionSpan = $('<span class="description">').text(card.description);
  var finishSpan = $('<span class="finish">Finish</span>');
  var deleteSpan = $('<span class="delete">X</span>');
  listItem.prepend(finishSpan).prepend(deleteSpan).prepend(descriptionSpan);
  var col = $('#todo-column').find('ul.card-list');
  listItem.appendTo(col);
}

function finishCard() {
  //updating database
  var card = $(this).parent();
  var cardId = card.data('id');
  var params = {
    card: { completed: true }
  };
  $.ajax('/cards/' + cardId,
    {type: 'PUT',
    data: params})
  .done(function(data) {
    renderCompleted(data)
    card.remove();
  });

}

function deleteCard() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax({
    url: '/cards/' + id,
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

function editCardText() {
  var descriptionSpan = $(this)
  var editField = $('<span class="edit">');
  var editInput = $('<input type="text" class="edit-description">').val(this.innerText);
  editField.append(editInput);
  // editField.prependTo($(this).parent());
  // descriptionSpan.remove();
  descriptionSpan.replaceWith(editField)
}

function updateCard() {
  var cardElement = $(this).closest('.card');
  var cardDescription = cardElement.find('.edit-description').val();
  var cardId = cardElement.data('id');
  var params = {
    card: {description: cardDescription}
  };
  $.ajax('/cards/' + cardId,
    {type: 'PUT',
    data: params})
  .done(function(newCard) {
    // editElement.replaceWith(renderToDo(newCard));
    var editElement = cardElement.find('.edit')
    var descriptionSpan = $('<span class="description">').text(newCard.description);
    editElement.replaceWith(descriptionSpan);
  });
}

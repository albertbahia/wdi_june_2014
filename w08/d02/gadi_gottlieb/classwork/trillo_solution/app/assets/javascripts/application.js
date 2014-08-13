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

$(document).ready(function() {
  console.log("HHELLLLOOOOO!");

  fetchAndRenderCards();

  // event listeners
  $('button').click(createCard);
  $('body').on('click', '.delete', deleteCard);
  $('body').on('click', '.finish', finishCard);
  $('#todo-column').on('click', '.description', editCard);
  $('#todo-column').on('keypress', '.edit-description', function(event){
    theActualInputBox = this;
    if (event.which === 13) {
      updateCard.call(theActualInputBox);
    }
  });
});

function createCard() {
  var newCardDescription = $('#new-card-text').val();
  $('#new-card-text').val('');

  $.post("/cards", {card: {description: newCardDescription, completed: false}})
    .done(renderTodo);
}

function fetchAndRenderCards() {
  $.get('/cards')
    .done(renderCards)
    .fail( function(data) { console.log(data);});
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
  var listItem = $('<li class="card done" data-id="' + card.id + '" >');
  var descriptionSpan = $('<span class="description">' + card.description + '</span>');
  var deleteSpan = $('<span class="delete">X</span>');
  listItem.append(deleteSpan).append(descriptionSpan);
  $('#completed-column').find('.card-list').append(listItem);
}

function renderTodo(card) {
  var listItem = $('<li class="card todo" data-id="' + card.id + '" >');
  var descriptionSpan = $('<span class="description">' + card.description + '</span>');
  var deleteSpan = $('<span class="delete">X</span>');
  var finishSpan = $('<span class="finish">Finish</span>');
  listItem.append(descriptionSpan).append(deleteSpan).append(finishSpan);
  $('#todo-column').find('.card-list').append(listItem);
}

function deleteCard() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax("/cards/" + id, {type: "DELETE"});
}

function finishCard(){
  var oldCard = $(this).parent();
  var id = oldCard.data('id');
  var params = {
    card: {completed: true}
  };
  $.ajax('/cards/' + id, {type: "PUT", data: params})
  .done(function(card){

    // Adding the card to the done column
    renderCompleted(card);

    //removing the card from the to-do column
    oldCard.remove();
  });
}

function editCard(){
  // alert('You are trying to edit: ' + $(this).text() )
  var descriptionSpan = $(this);
  var editSpan = $('<span class="edit">');
  var editInput = $('<input type="text" class="edit-description">');
  editInput.val(descriptionSpan.text());
  editSpan.append(editInput);

  descriptionSpan.replaceWith(editSpan);
}

function updateCard(){
  var oldCard = $(this).closest('.card');
  var id = oldCard.data('id')

  var newDescription = oldCard.find('.edit-description').val();

  var params = {
    card: {
      description: newDescription
    }
  }
  $.ajax('/cards/' + id, { type: "PUT", data: params})
  .done(function(newCard){
    renderTodo(newCard);
    oldCard.remove();
  });
}

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
  //$('button').click(createCard);
  $('#new-card').on('keypress', updateCard);
  $('body').on('click', '.delete', deleteCard);
  $('body').on('click', '.finish', finishCard);
  $('#todo-column').on('click', '.description', editCard);
  $('body').on('keypress', '.edit-description', function(event){
    if (event.which === 13){
      //updateCard(this);
      updateCard.call(this); //make THIS actually this so that you can use THIS in the function below
    }
  });
});

function createCard(event) {
  if (event.which === 13) {
    var newCardDescription = $('#new-card-text').val();
    $('#new-card-text').val('');
    $.post("/cards", {card: {description: newCardDescription, completed: false}})
      .done(renderTodo);}
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
  var deleteSpan = $('<span class="delete">X</span>');
  var descriptionSpan = $('<span class="description">' + card.description + '</span>');
  listItem.append(deleteSpan).append(descriptionSpan);
  $('#completed-column').find('.card-list').append(listItem);
}

function renderTodo(card) {
  var listItem = $('<li class="card todo" data-id="' + card.id + '" >');
  var deleteSpan = $('<span class="delete">X</span>');
  var finishSpan = $('<span class="finish">Finish</span>');
  var descriptionSpan = $('<span class="description">' + card.description + '</span>');
  listItem.append(descriptionSpan).append(deleteSpan).append(finishSpan);
  $('#todo-column').find('.card-list').append(listItem);
}

function deleteCard() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax("/cards/" + id, {type: "DELETE"});
}

function finishCard() {
  var oldCard = $(this).parent();
  var id = oldCard.data('id');
  var params = {
    card: { completed: true }
  };
  $.ajax('/cards/' + id, { type: "PUT", data: params })
    .done(function(card) {
      // Adding the card to the done column
      renderCompleted(card);

      // Removing the card from the to-do column
      oldCard.remove();
    });
}

function editCard() {
  var descriptionSpan = $(this);
  var editSpan = $('<span class="edit">');
  var editInput = $('<input type="text" class="edit-description">');
  editInput.val(descriptionSpan.text());
  editSpan.append(editInput);
  descriptionSpan.replaceWith(editSpan);
}

function updateCard() {
    var cardElement = $(this).closest('.card');
    var id = cardElement.data('id');
    var newDescription = cardElement.find('.edit-description').val();
    var params = {
      card: { description: newDescription }
    };

    $.ajax('/cards/' + id, { type: "PUT", data: params})
    .done(function(card) {
      var editElement = cardElement.find('.edit');
      var descriptionSpan = $('<span class="description">').text(card.description);
      editElement.replaceWith(descriptionSpan);}
    // cardElement.remove();
    // renderTodo(card);
  );
}

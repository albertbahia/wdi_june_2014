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
  $('#todo-column').on('click', '.description', editCardText);
  $('body').on('keypress','.edit-description', updateCard); 

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
  var descriptionSpan = $('<span class="description">' + card.description + '</span>');
  var listItem = $('<li class="card done" data-id="' + card.id + '" >');
  var deleteSpan = $('<span class="delete">X</span>');
  listItem.append(deleteSpan).append(card.description);
  $('#completed-column').find('.card-list').append(listItem);
}

function renderTodo(card) {
  var descriptionSpan = $('<span class="description"> "' + card.description + '"</span>');
  var listItem = $('<li class="card todo" data-id="' + card.id + '" >');
  var deleteSpan = $('<span class="delete">X</span>');
  var finishSpan = $('<span class="finish">Finish</span>');
  listItem.append(descriptionSpan).append(deleteSpan).append(finishSpan);
  $('#todo-column').find('.card-list').append(listItem);
}

function deleteCard() {
  var finishSpan = $(this) 
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax("/cards/" + id, {type: "DELETE"});
}
function finishCard () {
  var id = $(this).parent().data('id');
  var params = {
    card: 
    {completed: true }
  }; 
  $.ajax('/cards/' + id, { type: "PUT", data: params })
    .done(function(card){
      renderCompleted(card);
      $(finishSpan).parent().remove();   
    });
}
function editCardText(){
  var descriptionSpan = $(this); 
  var editSpan = $('<span class="edit">'); 
  var editInput = $('<input class="edit-description">'); 

  editInput.val(descriptionSpan.text()); 
  editSpan.append(editInput); 
  descriptionSpan.replaceWith(editSpan);  
}

function updateCard() {
  var cardElement = $(this).closest('.card');
  var id = cardElement.data('id'); 
  var newDescription = card.find('.edit-description').val(); 
  var params = {
    card: {
    description: newDescription 
    } 
  }
  $ajax('/card/'+ id, { type: "PUT", data: params }) 
    .done(function(newCard){
    cardElement.remove();
    renderTodo(card);
  }) 
} 

function keypressHandler () {
  // body...
}


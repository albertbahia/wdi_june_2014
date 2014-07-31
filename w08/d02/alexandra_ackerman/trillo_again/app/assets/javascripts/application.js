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

$(document).ready(function(){
  console.log("Ready!");
  fetchAndRenderCards();
  $('body').on('click', '.delete', removeCard);
  $('body').on('click', '.finish', finishCard);
  $('#new-card-button').on('click', createCard);
  $('#todo-column').on('click', '.description', editCard);
  $('body').on('click', '.edit-button', updateCard);
  $('body').on('keypress', '.edit-description', function(event) { 
    var actualInput = this;
    if (event.which === 13) {
      updateCard.call(actualInput);
    }
  });
});

//promise-like function, gives what to do when failed
function fetchAndRenderCards() {
  $.get('/cards').done(renderCards)
  .fail(function(data) {console.log(data);});
};

function renderCompleted(card){
  var listItem = $('<li>').attr('data-id', card.id).addClass('card done');
  var deleteSpan = $('<span>X</span>').addClass('delete');
  var textSpan = $('<span class="description">' + card.description + '</span>');
  $('#completed-column').find('ul').append(listItem);
  listItem.append(textSpan);
  listItem.append(deleteSpan);
};

function renderTodo(card){
  var listItem = $('<li>').attr('data-id', card.id).addClass('card todo');
  var textSpan = $('<span class="description">' + card.description + '</span>');
  var deleteSpan = $('<span>X</span>').addClass('delete');
  var finishSpan = $('<span>Finish</span>').addClass('finish');
  $('#todo-column').find('ul').append(listItem);
  listItem.append(textSpan);
  finishSpan.prependTo(listItem);
  deleteSpan.prependTo(listItem);
};

function renderCards(cards){
  cards.forEach(function(currentCard) {
    if (currentCard.completed) {
      renderCompleted(currentCard);
    } else {
      renderTodo(currentCard);
    }
  });
};

function finishCard() {
  var id = $(this).parent().attr('data-id');
  var finishSpan = this;
  $.ajax({
    url: '/cards/' + id,
    type: 'PUT',
    data: { card:
      { completed: true }}
  })
  .done(function(card) {
    renderCompleted(card);
    $(finishSpan).parent().remove();
  });
};

function removeCard(){
  var id = $(this).parent().attr('data-id');
  $(this).parent().remove();
  $.ajax('/cards/' + id , {type: 'DELETE'});
};

function createCard() {
  var newCardDescription = $('#new-card-text').val();
  $('#new-card-text').val('');
  $.post("/cards", {card: {description: newCardDescription, completed: false }})
    .done(renderTodo);
};

function editCard(){
  var descriptionSpan = $(this);
  var editSpan = $('<span class="edit">');
  var editInput = $('<input class="edit-description">');
  var editButton = $("<button class='edit-button'>");
  editInput.val(descriptionSpan.text());
  editButton.text('Update');

  editSpan.append(editInput).append(editButton);
  descriptionSpan.replaceWith(editSpan);
};

function updateCard(){
  var editSpan = $(this).parent();
  var id = editSpan.parent().data('id');
  var editDescription = $(this).prev().val();
    $.ajax({
    url: '/cards/' + id,
    type: 'PUT',
    data: { card: 
      { description: editDescription }}
  })
  .done(function(card) {
    var descriptionSpan = $('<span class="description">').text(card.description);
    editSpan.replaceWith(descriptionSpan);
  });
};

// function enterKey(event){
//   var key = event.keyCode || event.which;
//   if (key == 13){
//     updateCard();
//   } 
// };

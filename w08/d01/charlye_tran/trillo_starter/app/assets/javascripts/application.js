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
  fetchAndRenderCards();
  $('body').on('click', '.delete', deleteCard);
  $('body').on('click', '.finish', markAsFinished);
  $('#new-card-button').on('click', createCard);
});

function fetchAndRenderCards() {
  $.get("/cards")
  .done(renderCards) //if it succeeds, render cards
  .fail(function(data) { console.log(data); }); //if it fails, print the data returned
}

function renderCards(cards){
  cards.forEach(function(currentCard){
    if (currentCard.completed) {
      renderCompleted(currentCard);
    } else {
      renderToDo(currentCard);
    }
  });
}

function renderCompleted(card){
  var listItem = $('<li data-id="' +card.id + '" class="card done">');
  var deleteSpan = $('<span class="delete">X</span>');
  listItem.prepend(deleteSpan);
  listItem.append(card.description);
  $('#completed-column').find('.card-list').append(listItem);
  // card.completed; // true
}

function renderToDo(card){
  var listItem = $('<li class="card todo" data-id ="' + card.id + '">');
  var deleteSpan = $('<span class="delete">X</span>');
  var finishSpan = $('<span class="finish">Finish</span>');
  listItem.prepend(finishSpan).prepend(deleteSpan);
  listItem.append(card.description);
  $('#todo-column').find('.card-list').append(listItem);
}

function deleteCard() {
  $(this).parent().remove();
  var id = $(this).parent().data('id');
  $.ajax("/cards/" + id, {type: "delete"});
}

function createCard(){
  var newTask = $('#new-card-text').val();
  $.post("/cards/", { card:
    {description: newTask,
    completed: false}
  })
  .done(renderToDo); //once the post is completed, render to do on the data returned
  $('#new-card-text').val(""); //reset the val of new card text
}

function markAsFinished(){
  $(this).removeClass();
  $(this).addClass('card done');
}

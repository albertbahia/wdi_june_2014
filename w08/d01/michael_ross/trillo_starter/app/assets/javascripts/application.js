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

// This says when the document is ready and the DOM is fully loaded, console.log and run this function
$(document).ready(function(){
  console.log("HAYYYYYYY");

  fetchAndRenderCards();

  // Event Listeners
  $('body').on('click', '.delete', deleteCard);
  // We will implement tomorrow
  // $('body').on('click', '.finish', markAsCompleted)
  $('body').on('click', '#new-card-button', createCard)
});

function fetchAndRenderCards() {
  $.get( "/cards")
  .done(renderCards)
  .fail( function(data)  { console.log(data); });


  // $.get("/cards" renderCards);

  //jquery get request
  //   $.get( "/cards", function(data) {
  //     renderCards(data)
  //     alert("all cards were fetched and rendered");
  // });
}

function renderCards(cards) {
  cards.forEach(function(currentCard) {
    if (currentCard.completed) {
      renderCompleted(currentCard)
    } else {
      renderTodo(currentCard)
    }
  });
}

function renderCompleted(card) {
  var listItem = $('<li class="card done" data-id="' + card.id + '">');
  var deleteSpan = $('<span class="delete">X</span>');
  listItem.append(deleteSpan).append(card.description);
  $('#completed-column').find('.card-list').append(listItem);
}

function renderTodo(card) {
  var listItem = $('<li class="card todo" data-id="' + card.id +'">');
  var deleteSpan = $('<span class="delete">X</span>');
  var finishSpan = $('<span class="finish">Finish</span>');
  listItem.append(card.description).prepend(finishSpan).prepend(deleteSpan);
  $('#todo-column').find('.card-list').append(listItem);
}

function deleteCard() {
  var id = $(this).parent().data('id');
  $(this).parent().remove(); // finds span element with class .delete and removes its parent (li)
  $.ajax("/cards/" + id, {type: "DELETE"});
}

function createCard() {
  var input = $('#new-card-text').val();
  var params = {card: {description: input, completed: false}}

  $.post("/cards/", params)
  .done(renderTodo);

  $('#new-card-text').val('');

}

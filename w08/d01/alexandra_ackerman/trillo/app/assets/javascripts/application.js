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
});


//promise-like function, gives what to do when failed
function fetchAndRenderCards() {
  $.get('/cards').done(renderCards)
  .fail(function(data) {console.log(data);});
}

//get request knows to pass data as first arg to function
// function fetchAndRenderCards(){
//   $.get('/cards', renderCards);
// }

// function fetchAndRenderCards(){
//   $.get("/cards", function(data){
//     renderCards(data);
//   });
// }


function renderCompleted(card){
  var listItem = $('<li>').attr('data-id', card.id).addClass('card done');
  var deleteSpan = $('<span>X</span>').addClass('delete');
  listItem.text(card.description);
  $('#completed-column').find('ul').append(listItem);
  deleteSpan.prependTo(listItem);
};

function renderTodo(card){
  var listItem = $('<li>').attr('data-id', card.id).addClass('card todo');
  var deleteSpan = $('<span>X</span>').addClass('delete');
  var finishSpan = $('<span>Finish</span>').addClass('finish');
  listItem.text(card.description);
  $('#todo-column').find('ul').append(listItem);
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
  var doneList = $('#completed-column ul');
  var card = $(this).parent();

  card.removeClass('todo');
  card.addClass('done');

  card.appendTo(doneList);
  $(this).remove();

  // var id = $(this).parent().data('id');
  // console.log(id);
  // $.ajax({
  //   url: '/cards/' + id,
  //   type: 'PUT',
  //   data: { card:
  //     {completed: true }}
  // });
};

function removeCard(){
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax('/cards/' + id , {type: 'DELETE'});
};

function createCard() {
  var newCardDescription = $('#new-card-text').val();
  $('#new-card-text').val('');
  $.post("/cards", {card: {description: newCardDescription, completed: false }})
    .done(renderTodo);
}

// function createCard(){
//   var input = $('#new-card-text');
//   var card = $('<li class="card todo">');
//   var deleteSpan = $('<span>X</span>').addClass('delete');
//   var finishSpan = $('<span>Finish</span>').addClass('finish');
//   card.appendTo('#todo-column ul');
//   card.text(input.val());
//   card.append(deleteSpan).append(finishSpan);
  
//   //sends post request to DB
//   $.ajax({
//     url: '/cards',
//     type: 'POST',
//     data: { card:
//       {description: input.val(), completed: false }}
//   })
//   //clears input, back to palceholder
//   input.val('');
// };
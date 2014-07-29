$(function() {
  console.log("Hi");
  $('.card').on('click', cardClick);
  $('.done').on('click', removeCard);
  $('.todo').on('click', finishCard);
  $('#new-card-button').on('click', createCard);
});

var cardClick = function(){
  var cardText = $(this).text();
  console.log(cardText);
}

var removeCard = function(){
  console.log("remove")
  var cardDone = $(this).remove()
}

var finishCard = function(){
  console.log("finish")
  var doneList = $('#done-column ul.card-list');
  var card = $(this);

  // Update classes
  card.removeClass('todo');
  card.addClass('done');

  // Update Listener
  card.off();
  card.on('click', removeCard)

  // Moving to done list
  card.appendTo(doneList);
}

var createCard = function(){
  console.log('create card');
  var todoList = $('#todo-column ul.card-list');
  var input = $('#new-card-text');
  var card = $('<li>');
  card.addClass('card todo');
  var info = card.text(input.val());
  card.on('click', finishCard);
  card.appendTo(todoList);
  input.val('');
}

$(function() {
  console.log("Hi");

  $('.card').on('click', cardClick);
  $('.done').on('click', deleteCard);
  $('.todo').on('click', moveCard);
  $('#new-card-button').on('click', addCard);
});


var cardClick = function () {
  var card = $(this);
  var cardText = card.text();
}

var deleteCard = function () {
  var card = $(this);
  var done = card.remove();
};

var moveCard = function () {
  var card = $(this);
  card.removeClass('todo');
  card.addClass('done');
  card.off();
  card.on('click',deleteCard);
  card.appendTo('#done-column .card-list');
};

var addCard = function () {
  var newCard = $('<li>').addClass("card todo");
  var newInput = $('#new-card-text').val();
  newCard.text(newInput);
  newCard.on('click',moveCard);
  newCard.appendTo('#todo-column .card-list');
  $('input').val('');
}

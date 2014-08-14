$(function() {
  console.log("Hi");
  $('.card').click(cardClick);
  $('.done').click(cardDelete);
  $('.todo').click(cardDone);
  $('#new-card-button').click(newCard);
});


// when a card is clicked, console.log('card is clicked')
var cardClick = function() {
  console.log($(this).text());
}

var cardDelete = function() {
  $(this).remove();
}

var cardDone = function() {
  var doneList = $('#done-column ul.card-list');
  var card = $(this);
  card.removeClass('todo');
  card.addClass('done');
  card.off();
  card.on('click', cardDelete);
  card.appendTo(doneList);
}

var newCard = function() {
  var newCard = $('<li class="card todo">').appendTo('#todo-column ul').text($('#new-card-text').val());
  var card = $(this);
  card.off();
  card.on('click', cardDelete);
  newCard.click(cardDone);

  $('#new-card-text').val('');
}

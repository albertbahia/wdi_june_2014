$(function() {
  console.log("Hi");
  $('.card').click(cardClick);
  // $('.done').click(cardDelete);
  // $('.todo').click(cardDone);
  $('#new-card-button').click(newCard);
  $('.finish').click(cardDone);
  $('.delete').click(cardDelete);
});


// when a card is clicked, console.log('card is clicked')
var cardClick = function() {
  console.log($(this).text());
}

var cardDelete = function() {
  var removeCard = $(this);
  removeCard.parent().remove();
}

var cardDone = function() {
  var doneList = $('#done-column ul.card-list');
  var finish = $(this);
  var card = finish.parent();
  card.removeClass('todo');
  card.addClass('done');
  card.off();
  finish.on('click', cardDelete);
  finish.remove();
  card.appendTo(doneList);
}

var newCard = function() {

  var newCard = $('<li class="card todo">').appendTo('#todo-column ul').text($('#new-card-text').val());
  var deleteCard = $('<span>').addClass('delete').text('X');
  var finishCard = $('<span>').addClass('finish').text('Finish');
  deleteCard.on('click', cardDelete);
  finishCard.on('click', cardDone);
  newCard.append(deleteCard).append(finishCard);
  newCard.click('#todo-column ul');
  $('#new-card-text').val('');
}

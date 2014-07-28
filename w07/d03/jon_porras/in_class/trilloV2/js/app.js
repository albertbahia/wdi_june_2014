$(function() {
  console.log("Hi");

  $('.finish').click(moveToDone);
  $('.delete').click(cardRemove);
  $('.finish').click(moveToDone);
  $('#new-card-button').click(addToList);
});

// var cardClick = function() {
//   var card = $(this);
//   var cardText = card.text();
//   console.log(cardText);
// }

var cardRemove = function() {
  var card = $(this).parent();
  card.remove();
}

var moveToDone = function() {
  var doneList = $('#done-column ul.card-list');
  var card = $(this).parent();
  card.removeClass('todo');
  card.addClass('done');
  card.off();
  //card.click(cardRemove);
  card.appendTo(doneList);
  $(this).remove();
}

var addToList = function() {
  var text = $('#new-card-text').val();
  var card = $('<li>').text(text).addClass('card todo');
  var todoList = $('#todo-column ul.card-list');

  //add buttons
  var finishButton = $('<span>').text(' Finish').addClass('finish');
  var deleteButton = $('<span>').text(' X').addClass('delete');
  finishButton.click(moveToDone);
  deleteButton.click(cardRemove);

  card.append(finishButton, deleteButton);
  todoList.append(card);

  card.off();

  $('#new-card-text').val('');
}

$(function() {
  console.log("Hi");
  $('.delete').on('click', doneClick);
  $('.finish').on('click', moveToDone);
  $('#new-card-button').on('click', addCard);
});

var doneClick = function() {
    $(this).parent().remove();
}

var moveToDone = function() {
  var doneList = $('#done-column ul');
  var card = $(this).parent();
  card
    .removeClass('todo')
    .addClass('done')
    // .off()
    // .on('click', doneClick)
    .appendTo(doneList);
  $(this).remove();
}

var addCard = function() {
  var task = $('#new-card-text');
  var newCard = $('<li>');
  newCard
    .addClass('card todo')
    .text(task.val())
    .appendTo($('ul').eq(0));
  task.val('');
  var finishSpan = $('<span>').addClass('finish').text('Finish');
  var deleteSpan = $('<span>').addClass('delete').text('X');
  finishSpan.on('click', moveToDone);
  deleteSpan.on('click', doneClick);
  newCard.append(finishSpan).append(deleteSpan);
}

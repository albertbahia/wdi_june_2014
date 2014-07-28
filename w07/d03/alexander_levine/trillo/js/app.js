$(function() {
  console.log("Hi");
  $('.done').on('click', doneClick);
  $('.todo').on('click', moveToDone);
  $('#new-card-button').on('click', addCard);
});

var doneClick = function() {
    $(this).remove();
}

var moveToDone = function() {
  var doneList = $('#done-column ul');
  var card = $(this);
  card
    .removeClass('todo')
    .addClass('done')
    .off()
    .on('click', doneClick)
    .appendTo(doneList);
}

var addCard = function() {
  var newCard = $('<li>')
  var task = $('#new-card-text');
  newCard
    .addClass('card todo')
    .text(task.val())
    .off()
    .on('click', moveToDone)
    .appendTo($('ul').eq(0));
  task.val('');
}

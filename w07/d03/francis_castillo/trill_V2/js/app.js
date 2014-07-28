$(function() {
  console.log("Hi");
  $('.card-list li').click(cardClick);
  $('.delete').click(removeFromDone);
  $('.finish').click(taskDone);
  $('#new-card-button').click(addTask);
});

var cardClick = function() {
  var cardText = $(this).text();
  console.log(cardText);
};

var removeFromDone = function() {
  $(this).parent().remove();
};

var taskDone = function() {
  var task = $(this).parent();
  task.removeClass().addClass("card done");
  task.prependTo($('#done-column ul'));
  task.off();
  $(this).remove();
};

var addTask = function() {
  var task = $('#new-card-text')
  var inputVal = task.val();
  var card = $('<li>');
  var delButton =
    $('<span>').addClass("delete").text('X');
  var finButton =
    $('<span>').addClass("finish").text('Finish');

  card.text(inputVal).addClass("card todo");
  card.prependTo($('#todo-column ul'));
  finButton.click(taskDone);
  delButton.click(removeFromDone);
  card.append(delButton, finButton);
  task.val('');


};

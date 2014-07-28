$(function() {
  console.log("Hi");
  $('.card-list li').click(cardClick);
  $('.done').click(removeFromDone);
  $('.todo').click(taskDone);
  $('#new-card-button').click(addTask);
});

var cardClick = function() {
  var cardText = $(this).text();
  console.log(cardText);
};

var removeFromDone = function() {
  $(this).remove();
};

var taskDone = function() {
  var task = $(this);
  task.removeClass().addClass("card done");
  task.prependTo($('#done-column ul'));
  task.off();
  task.click(removeFromDone);
};

var addTask = function() {
  var todoList = $('#new-card-text')
  var inputVal = todoList.val();
  var card = $('<li>');

  card.text(inputVal).addClass("card todo");
  card.prependTo($('#todo-column ul'));
  card.off();
  card.click(taskDone);
  todoList.val('');
};

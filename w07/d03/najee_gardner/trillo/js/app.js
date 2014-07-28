$(function() {
  console.log("Hi");

  $('.done').on('click', removeCard);
  $('.todo').on('click', finishCard);
  $('#new-card-button').on('click', addNewCard);
});

function removeCard() {
  $(this).remove();
}

function finishCard() {
  var card = $(this);
  card.removeClass('todo');
  card.addClass('done');
  card.appendTo('#done-column ul');
  card.off();
  card.on('click', removeCard);
}

function addNewCard() {
  if ($('#new-card-text').val()) {
    var card = $('<li class="card todo">').text($('#new-card-text').val());
    $('#new-card-text').val('');
    $('#todo-column ul').append(card);
    card.on('click', finishCard);
  }
}

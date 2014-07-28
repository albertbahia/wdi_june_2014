$(function() {
  console.log("Hi");
  addButtons();

  $('.remove').on('click', removeCard);
  $('.finish').on('click', finishCard);
  $('#new-card-button').on('click', addNewCard);
});

function addButtons() {
  var finishButton = $('<span class="finish">').text('Finish');
  var removeButton = $('<span class="remove">').text('X');

  $('.card').append(removeButton);
  $('.todo').append(finishButton);

}

function removeCard() {
  $(this).parent().remove();
}

function finishCard() {
  var card = $(this).parent();
  card.children().eq(1).remove();

  card.removeClass('todo');
  card.addClass('done');
  card.appendTo('#done-column ul');
}

function addNewCard() {
  if ($('#new-card-text').val()) {
    var finishButton = $('<span class="finish">').text('Finish');
    var removeButton = $('<span class="remove">').text('X');

    finishButton.on('click', finishCard);
    removeButton.on('click', removeCard);

    var card = $('<li class="card todo">').text($('#new-card-text').val());
    card.append(removeButton).append(finishButton);

    $('#new-card-text').val('');
    $('#todo-column ul').append(card);
    card.on('click', finishCard);
  }
}

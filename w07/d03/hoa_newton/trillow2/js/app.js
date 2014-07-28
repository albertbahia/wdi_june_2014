$(function() {
  console.log("Hi");
  $('.card').on('click', cardClick);
  // $('.done').on('click', removeCard);
  $('.finish').on('click', finishCard);
  $('#new-card-button').on('click', createCard);

  $('.delete').on('click', removeCard);

});

// When a card is clicked, console.log("A card is clicked.")
var cardClick = function() {
  var card = $(this);
  var cardText = card.text();
  console.log(cardText);
}

var removeCard = function() {
  console.log('remove');
  $(this).parent().remove();
}

var finishCard = function() {
  console.log('finish');
  var doneList = $('#done-column ul.card-list');
  var card = $(this).parent();

  // Update classes
  card.removeClass('todo');
  card.addClass('done');

  // Move to done list
  card.appendTo(doneList);


  //Remove finish button
  $(this).remove();

  // // Update listeners
  // card.off();
  // card.on('click', removeCard);
}

var createCard = function() {
  var todoList = $('#todo-column ul.card-list');
  var input = $('#new-card-text');
  var card = $('<li>');

  // Add classes to card
  card.addClass('card todo');

  // Add text to card
  card.text(input.val());

  // Add listener to card (the card now doesn't have listener any more)
  // card.on('click', finishCard);

  // Add buttons to the card
  var deleteButton = $('<span>').addClass('delete').text('Delete');
  var finishButton = $('<span>').addClass('finish').text('Finish');
  //Add listeners to buttons
  finishButton.on('click', finishCard);
  deleteButton.on('click', removeCard);
  //Attach buttons to card
  card.append(finishButton).append(deleteButton);


  // Add card to the todo list
  card.appendTo(todoList);

  // Clear the input box
  input.val('');
}






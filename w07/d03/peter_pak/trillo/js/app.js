$(function() {
  console.log("Hi");
  $('.card').on('click', cardClick);
  $('.done').one('click', removeCard);
  $('.todo').one('click', finishCard);
  $('#new-card-button').on('click', addCard);
});


var cardClick = function() {
  var thisCard = $(this).text;
  // if (thisCard)
  console.log(thisCard);
};

var removeCard = function() {
  var thisCard = $(this);
  thisCard.remove();
};

var finishCard = function() {
  var thisCard = $(this)
  thisCard.attr('class','card done');
  var doneList = $('#done-column ul');

  $('.done').one('click', removeCard);
  thisCard.appendTo(doneList);
};


var addCard = function() {
  var inputField = $('#new-card-text');
  var newCard = $('<li class="card todo">').text(inputField.val());
  var toDoList = $('#todo-column ul.card-list');
  newCard.appendTo(toDoList);
  $('.todo').one('click', finishCard);
  inputField.val('');
};


}

//
// * As a user, I want cards in the done column to disappear when I click them, so I can keep my done column compact.
//   * As a user, I want cards in the to do column to move to the done column when I click them, so I can keep track of my progress
//   * As a user, I want to a new card to be added to the todo column when I enter text and click the 'Add Card' button, so I can add new things to my list

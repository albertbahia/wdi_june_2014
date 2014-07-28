$(function() {
  console.log("Hi");
  $('#new-card-button').on('click', addCard);
  $('.finish').one('click', finishCard);
  $('.delete').one('click', removeCard);

});


var cardClick = function() {
  var thisCard = $(this).text;
  // if (thisCard)
  console.log(thisCard);
};

var removeCard = function() {
  var thisCard = $(this).parent();
  thisCard.remove();
};

var finishCard = function() {
  var thisButton = $(this)
  var thisCard = thisButton.parent();
  thisCard.attr('class','card done');
  var doneList = $('#done-column ul');
  thisCard.appendTo(doneList);
  this.remove();
};


var addCard = function() {
  var inputField = $('#new-card-text');
  var newCard = $('<li class="card todo">').text(inputField.val());
  var finishButton = $('<span class="Finish">').text(' Finish ');
  var deleteButton = $('<span class="Delete">').text(' X');
  finishButton.appendTo(newCard);
  deleteButton.appendTo(newCard);
  var toDoList = $('#todo-column ul.card-list');
  newCard.appendTo(toDoList);
  finishButton.one('click', finishCard);
  deleteButton.one('click', removeCard);
  inputField.val('');
};

var addFinishButton = function() {

};



//
// * As a user, I want cards in the done column to disappear when I click **the delete button** in them, so I can keep my done column compact.
//   * As a user, I want cards in the to do column to move to the done column when I click **the finish button**, so I can keep track of my progress
//   * As a user, I want cards in the to do column to disappear when I click **the delete button** in them, so I can remove cards I change my mind about them

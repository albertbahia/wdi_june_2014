$(function() {
  console.log("Hi");

  $('.done').on('click', removeDoneTask);
  $('.todo').on('click', moveCardToDone);
  // $('.card').on('click', moveCardToDone);
  $('button').on('click', createNewCard);

});

// * As a user, I want cards in the done column to disappear when I click them, so I can keep my done column compact.

var removeDoneTask = function() {
	$(this).remove();
};

// * As a user, I want cards in the to do column to move to the done column when I click them, so I can keep track of my progress

var moveCardToDone = function() {
	var card = $(this);
	card.removeClass('todo');
	card.addClass('done');
	card.off();
	card.on('click', removeDoneTask);
	card.appendTo($('#done-column ul.card-list'));
};

// * As a user, I want to a new card to be added to the todo column when I enter text and click the 'Add Card' button, so I can add new things to my list

var createNewCard = function() {
	var newCardText = ($('#new-card-text').val());
	var newCard = $('<li>').addClass('card').addClass('todo').text(newCardText);
	newCard. appendTo($('#todo-column ul.card-list'));
	newCard.on('click', moveCardToDone);
	$('#new-card-text').val('');
};

























// 
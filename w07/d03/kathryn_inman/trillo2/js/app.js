$(function() {
  console.log("Hi");
  
  $('.finish-button').on('click', finishCard);
  $('.delete-button').on('click', deleteCard);

  $('#new-card-button').on('click', createNewCard);

  // $('#new-card-button').on('mouseenter', highlightButton);

});



// * As a user, I want cards in the to do column to move to the done column when I click **the finish button**, so I can keep track of my progress

var finishCard = function() {
	var card = $(this).parent();
	card.removeClass('todo');
	card.addClass('done');
	// card.children('.delete-button').on('click', deleteCard);
	$(this).remove();
	card.appendTo($('#done-column ul.card-list'));
};


// * As a user, I want cards in the done column to disappear when I click **the delete button** in them, so I can keep my done column compact.

// * As a user, I want cards in the to do column to disappear when I click **the delete button** in them, so I can remove cards I change my mind about them

var deleteCard = function() {
	$(this).parent().remove();
};

// * As a user, I want to a new card to be added to the todo column when I enter text and click the 'Add Card' button, so I can add new things to my list

var createNewCard = function() {
	var newCardText = ($('#new-card-text').val());
	var newCard = $('<li>').addClass('card').addClass('todo').text(newCardText);
	newCard. appendTo($('#todo-column ul.card-list'));

	// creates finish and delete buttons
	newCard.append($('<button>Finish</button>').addClass('finish-button'));
	newCard.append($('<button>Delete</button>').addClass('delete-button'));
	newCard.children('.delete-button').on('click', deleteCard);
	newCard.children('.finish-button').on('click', finishCard);

	// clears input box
	$('#new-card-text').val('');
};
























// 
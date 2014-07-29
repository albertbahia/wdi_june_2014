// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$( function() {
	fetchAndRenderCards();
	$('body').on('click', '.delete', deleteCard);
	$('body').on('click', '#new-card-button', createCard);
})

function fetchAndRenderCards() {
	$.get('/cards')
		.done(renderCards)          // if you are done, run this 
		.fail(function(data) { console.log(data) });   //if you fail then run this
}

function renderCards(cards) {
	cards.forEach(function(currentCard){
		if ( currentCard.completed ) {
			renderCompleted(currentCard);
		} else {
			renderTodo(currentCard);
		}
	})   //each
} 

function renderCompleted(card) {
	var listItem = $('<li class="card done" data-id="' + card.id + '">')
	// var listItem = $('<li>').addClass("card done");
	var deleteSpan = $('<span class="delete">X</span> ');
	listItem.prepend(deleteSpan);
	listItem.append(card.description);
	$('#completed-column').find('.card-list').append(listItem);
	// card.description  	//wash the dishes
	// card.completed 			// true
}

function renderTodo(card){
	var listItem = $('<li class="card todo" data-id="' + card.id + '">')
	// var listItem = $('<li>').addClass('card todo');
	var deleteSpan = $('<span class="delete">X</span> ');
	var finishSpan = $('<span class="finish">Finish</span>');
	listItem.append(card.description).append(deleteSpan).append(finishSpan);
	$('#todo-column').find('.card-list').append(listItem);
}

function deleteCard() {
	var id = $(this).parent().data('id');
	$(this).parent().remove();
	$.ajax("/cards/" + id, { type: "DELETE" });
}

function createCard() {
  var userInputParams = {card: {description: $('#new-card-text').val(), completed: false}};

  renderTodo(userInputParams.card);
  $.post('/cards', userInputParams);

}





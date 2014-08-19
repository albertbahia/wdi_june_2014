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

$(document).ready(function() {
	console.log('ready');
	fetchAndRender();
	$('body').on('click', '.delete', deleteCard);
	$('body').on('click', '#new-card-button', createCard);
	$('body').on('click', '.finish', finishCard);
	$('#todo-column').on('click', '.description', editCard);
	$('body').on('keypress', '.edit-description', keypressHandler);
})


function renderCompleted(card) {
	var listItem = $('<li class="card done" data-id="'+ card.id +'"></li>');
	var deleteSpan = $('<span class="delete">X</span>');
	var cardDescription = $('<span class="description">' + card.description + '</span>');
	listItem.append(cardDescription).prepend(deleteSpan);
	$('#completed-column').find('.card-list').append(listItem);
};

function renderTodo(card) {
	var listItem = $('<li class="card todo" data-id="'+ card.id +'"></li>');
	var finishSpan = $('<span class="finish">finish!</span>');
	var deleteSpan = $('<span class="delete">X</span>');
	var cardDescription = $('<span class="description">' + card.description + '</span>');
	listItem.append(cardDescription).prepend(deleteSpan, finishSpan);
	$('#todo-column').find('.card-list').append(listItem);
}

function renderCards(cardArray) {
	cardArray.forEach(function(currentCard) {
		if (currentCard.completed) {
			renderCompleted(currentCard);
		} else {
			renderTodo(currentCard);
		}
	});
}

function fetchAndRender() {
	$.get('/cards')
	.done(renderCards)
	.fail(function(data) {console.log(data)});
};


function deleteCard() {
	var id = $(this).parent().data('id');
	$(this).parent().remove();
	$.ajax('/cards/' + id, {type: 'DELETE'})
};


function createCard() {
	var newCardDescription = $('#new-card-text').val();
	var newCard = {description: newCardDescription, completed: false};
	$.ajax({url: '/cards', type: 'POST', data: {card: newCard}})
	.done(renderTodo)
	$('#new-card-text').val('');
};


function finishCard() {
	var cardToFinish = $(this).parent();
	var params = { card:{ completed: true }};
	$.ajax({
		url: '/cards/' + cardToFinish.data('id'),
		type: 'PUT',
		data: params
	})
	.done(function(data){renderCompleted(data)}, cardToFinish.remove());
};

function editCard() {
	var editSpan = $('<span class="edit">')
		.append($('<input class="edit-description">').val($(this).text()));
	$(this).replaceWith(editSpan);
};

function keypressHandler() {
	var cardElement = $(this).closest('.card');
	if (event.which === 13) {
		updateCardText.call(cardElement);
	}
}


function updateCardText() {
	var cardToEdit = $(this);
	var newText = cardToEdit.find('.edit-description').val();
	var params = {card: {description: newText}};
	$.ajax({
		url: '/cards/' + cardToEdit.data('id'),
		type: 'PUT',
		data: params
	})
	.done(function(data){
		cardToEdit.replaceWith(renderTodo(data))
	});
};














































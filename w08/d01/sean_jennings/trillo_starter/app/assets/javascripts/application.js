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

$('button').click(function() {

  function addCard () {
    var cardInput = $('#new-card-text').val();
    var $listItem = $('<li class="card todo">');
    $listItem.append(cardInput);

    $.ajax({
      url: '/cards',
      type: 'POST',
      data: { card: {
          description: cardInput,
          completed: true
        }
      },
      success: function () { console.log("success!")}
    });
  }
});


function addCard () {
  var cardInput = $('#new-card-text').val();
  var $listItem = $('<li class="card todo">');
  $listItem.append(cardInput);

  $.ajax({
    url: '/cards',
    type: 'POST',
    data: { card: {
        description: cardInput,
        completed: true
      }
    },
    success: function () { console.log("success!")}
  });
}

function fetchAndRenderCards() {
  $.get('/cards')
    .done(renderCards)
    .fail( function(data) { console.log(data); });
}

function renderCards(cards) {
  cards.forEach(function(currentCard) {
    if (currentCard.completed) {
      renderCompleted(currentCard);
    } else {
      renderTodo(currentCard);
    }
  })
}

function renderCompleted(card) {
  var listItem = $('<li class="card done">');
  var deleteSpan = $('<span class="delete">X></span>');
  listItem.prepend(deleteSpan);
  listItem.append(card.description);
  $('#completed-column').find('.card-list').append(listItem);
}

function renderTodo(card) {
  var listItem = $('<li class="card todo">');
  var finishSpan = $('<span class="finish">finish</span>');
  var deleteSpan = $('<span class="delete">X</span>');
  listItem.append(card.description).append(deleteSpan).append(finishSpan);
  $('#todo-column').find('.card-list').append(listItem);
}

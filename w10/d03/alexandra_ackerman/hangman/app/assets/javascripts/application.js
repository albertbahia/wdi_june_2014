//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require handlebars.runtime
//= require handlebars
//= require_tree ./templates
//= require_tree .

$(function(){
  console.log('Loaded, bro');
  game.initialize();
  $('body').on('click', "#guess", game.makeGuess);
  $('body').on('click', '#giveup', newGame);
});

var newGame = function() {
  alert('The correct answer was ' + game.board.answer.join(''))
  game.initialize();
  game.render();
}
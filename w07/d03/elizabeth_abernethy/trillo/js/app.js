$(function() {
  console.log("Hi");

  $('.card').on('click', cardClick);
});

var cardClick = function() {
  var cardText = $(this).text();
  console.log(cardText);
};

$(function() {
  console.log('Loaded bro.');
  // Access the page title
  var title = $('#page-title');
  console.log(title);

  // Access the list
  var list = $('#awesome-list');
  console.log(list);

  // Add a fifth item to the list
  // var list = $('#awesome-list');
  // var newListItem = $('<li>');
  // newListItem.text('I am the fifth list item');
  // newListItem.appendTo(list);

  $('<li>')
    .text('I am the fifth')
    .addClass('awesome-list-item')
    .appendTo(list);


  // Move the image to after the list
  var image = $('#image-container');
  // image.remove(); this is optional because appending automatically removes from existing postion
  image.appendTo($('body'));

  // Make the page title red (by adding a class to the page title)
  title.addClass('red');

  // Make the list items blue (add classes to each list item, not to the ul element)
  $('li.awesome-list-item').addClass('blue');

  // Make the description green
  $('#description').addClass('green');

  // Add a red footer paragraph to the page with the id "page-footer"
  $('<p>')
    .text('Thank you for visiting the coolest site on the planet')
    .attr('id', 'page-footer')
    .addClass('red')
    .appendTo($('body'));

  // Instead of having that starter HTML in the page, write JavaScript to **construct** this page
});

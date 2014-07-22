$(function() {
  console.log('Loaded bro.');

  // Access the page title
  var title = $('#page-title');
  console.log(title);

  // Access the list
  var list = $('#awesome-list');
  console.log(list);

  // Add a fifth item to the list
  var newListItem = $('<li>');

  newListItem
    .text('I am new')
    .addClass('awesome-list-item')
    .appendTo(list);

  // --- $('<li>').text('Fou...er, Fifth item!').appendTo($('#awesome-list')).attr('class', 'awesome-list-item');

  // Move the image to after the list
  $('#image-container').appendTo($('#header'));

  // Make the page title red (by adding a class to the page title)
  title.addClass('red');
  // -- $('#page-title').attr('class', 'red');

  // Make the list items blue (add classes to each list item, not to the ul element)
  $('li.awesome-list-item').attr('class', 'blue');


  // Make the description green
  $('#description').addClass('green');
  //--$('#description').attr('class', 'green');

  // Add a red footer paragraph to the page with the id "page-footer"
  $('<p>')
    .text('This is a footer.')
    .appendTo($('body'))
    .attr('id', 'page-footer')
    .addClass('red');

  // Instead of having that starter HTML in the page, write JavaScript to **construct** this page

});

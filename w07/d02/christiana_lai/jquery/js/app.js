$(function() {
  console.log('Loaded bro.');
  // ### jQuery DOM manipulation

// Access the page title
  console.log($('#page-title'));

// Access the list
  console.log($('#awesome-list'));

// Add a fourth item to the list
  // console.log($('#awesome-list').append('<li>jQuery is awesome</li>'));
  var list = $('#awesome-list');
  $('<li>')
    .text('I am the fifth')
    .addClass('awesome-list-item')
    .appendTo(list);

// Move the image to after the list
  console.log($('#image-container').appendTo('#awesome-list'));

// Make the page title red (by adding a class to the page title)
  console.log($('#page-title').addClass('red'));

// Make the list items blue (add classes to each list item, not to the ul element)
  items = $('.awesome-list-item');
  console.log($(items).addClass('blue'));

// Make the description green
  console.log($('#description').addClass('green'));

// Add a red footer paragraph to the page with the id "page-footer"
  console.log($('<p>')
  .text('Thank you for visiting!')
  .attr('id', 'page-footer')
  .appendTo($('body'))
  .addClass('red'));

// Instead of having that starter HTML in the page, write JavaScript to **construct** this page

});

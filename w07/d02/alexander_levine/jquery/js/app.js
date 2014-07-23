$(function() {
  console.log('Loaded bro.');
  //Access the page title
  var title = $('#page-title');
  console.log(title);
  //Access the list
  var list = $('#awesome-list');
  console.log(list);
  //Add a fifth item to the list
  var listItem = $('<li>Sean still loves Vanilla</li>')
    .addClass('awesome-list-item')
    .appendTo(list);
  //Move the image to after the list
  $('#image-container img')
    .remove()
    .appendTo('#header');
  //Make the page title red (by adding a class to the page title)
  title.addClass('red');
  //Make the list items blue (add classes to each list item, not to the ul element)
  var awesomeListItem = $('.awesome-list-item');
  awesomeListItem.addClass('blue');
  //Make the description green
  $('#description').addClass('green');
  //Add a red footer paragraph to the page with the id "page-footer"
  $('<p>').text('This is a footer paragraph')
    .addClass('red')
    .attr('id', 'page-footer')
    .appendTo($('body'));
  //Instead of having that starter HTML in the page, write JavaScript to **construct** this page
});

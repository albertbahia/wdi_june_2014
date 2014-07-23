$(function() {
  console.log('Loaded bro.');

  // * Access the page title
  console.log($('#page-title'));

  // * Access the list
  console.log($('#awesome-list'));
  // * Add a fifth item to the list
  var list = $('#awesome-list');
  // // newListItem.text('i am teh fifth list item')
  // // newListItem.appendTo(list);
  // // OR
  // // $('#awesome-list').append('<li class="awesome-list-item">adding to list</li>');


  $('<li>')
    .text('I am the fifth')
    .addClass('awesome-list-item')
    .appendTo(list);

  // * Move the image to after the list
  $('#image-container').appendTo('body');

  // * Make the page title red (by adding a class to the page title)
  $('#page-title').attr('class', 'red');

  // * Make the list items blue (add classes to each list item, not to the ul element)
  $('.awesome-list-item').attr('class', 'blue');

  // * Make the description green
  $('#description').addClass('green');
  // * Add a red footer paragraph to the page with the id "page-footer"
  $('<p>')
    .text('this is the footer')
    .attr('id', 'page-footer')
    .addClass('red')
    .appendTo('body');

  // * Instead of having that starter HTML in the page, write JavaScript to **construct** this page
  $('<section>')
    .attr('id', 'header')
    .appendTo('body');
  $('<h1>')
    .attr('id', 'page-title')
    .text('jQuery DOM')
    .appendTo($('#header'));
  $('<div>')
    .attr('id', 'image-containger')
    .html('<img height="100px" src="http://dochub.io/images/jquery_logo.png" alt="jQuery" />')
    .appendTo($('#header'));
  $('<p>')
    .text('jQuery can be awesome. Here\'s why.')
    .attr('id', 'description')
    .appendTo($('#header'));
    


});

//
//
//
// <section id="header">
//   <h1 id="page-title">jQuery DOM</h1>
//   <div id="image-container">
//     <img height="100px" src="http://dochub.io/images/jquery_logo.png" alt="jQuery" />
//   </div>
//   <p id="description">
//     jQuery can be awesome. Here's why.
//   </p>
//   <ul id="awesome-list">
//     <li class="awesome-list-item">It has a very intuitive interface for selecting elements.</li>
//     <li class="awesome-list-item">You don't need to iterate over anything anymore.</li>
//     <li class="awesome-list-item">It takes care of annoying text node things.</li>
//     <li class="awesome-list-item">We get to wrap everything in cash.</li>
//   </ul>
// </section>

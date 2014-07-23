$(function() {
  console.log('Loaded bro.');


  // * Access the page title
  var title = ($('#page-title'))
  console.log(title);

  // * Access the list
  var list = $('#awesome-list')
  console.log(list);

  // * Add a fifth item to the list
  $('#awesome-list').append('<li class="awesome-list-item">pleed the fif </li>');

  // var newListItem = $('<li>');
  // newListItem.text('I am the six thing')
  // newListItem.appendTo(list);
  // Added sixth thing

  $('<li>')
    .text("I am the sixth thing")
    .addClass("awesome-list-item")
    .appendTo(list);

  // * Move the image to after the list
  $('#image-container').appendTo("body");

  // * Make the page title red (by adding a class to the page title)
  $('#page-title').attr('class', 'red');

  // * Make the list items blue (add classes to each list item, not to the ul element)
  $('.awesome-list-item').attr('class', 'blue');

  // * Make the description green
  $('#description').attr('class', 'green')

  // * Add a red footer paragraph to the page with the id "page-footer"
  $('<p>I am on the footer!</p>')
    .attr('id', 'page-footer')
    .attr('class', 'red')
    .appendTo('body');
  // * Instead of having that starter HTML in the page, write JavaScript to **construct** this page

  $('<section>')
  .attr('id', 'header')
  .appendTo('body');

  $('<h1>')
  .attr('id', 'page-title')
  .text("jQuery DOM")
  .appendTo("body")

  $('<div>')
  .attr('id', 'image-container')
  .html('<img height="100px" src="http://dochub.io/images/jquery_logo.png" alt="jQuery" />')
  .appendTo('body');

  $('<p>')
  .text("jQuery can be awesome. Here's why")
  .attr('id','description')
  .appendTo('body');



// <!-- <section id="header">
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
// </section> -->


});

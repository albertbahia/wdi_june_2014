$(function() {
  // console.log('Loaded bro.');
  //
  // // Access the page title
  // var title = $('#page-title');
  //
  // // Access the list
  // var list = $('#awesome-list');
  //
  // // Add a fourth item to the list
  // list.append('<li>jQuery is so helpful</li>');
  //
  // // Move the image to after the list
  // $('div#image-container').appendTo('section');
  //
  // // Make the page title red (by adding a class to the page title)
  // title.attr('class', 'red');
  //
  // // Make the list items blue (add classes to each list item, not to the ul element)
  // list.children().addClass('blue');
  //
  // // Make the description green
  // $('#description').addClass('green');
  //
  // // Add a red footer paragraph to the page with the id "page-footer"
  // var footer = $('<p>this is the footer</p>').appendTo('body').addId('page-footer');
  // // $('body').lastChild();
  // console.log(footer);

  // Instead of having that starter HTML in the page, write JavaScript to **construct** this page
  var body = $('<body>');
  var list = $('<ul>');
  body.append(list);
  list.append('<li>');
});

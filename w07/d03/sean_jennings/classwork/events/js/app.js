$(function() {
  console.log("loaded, bro.");

  $('h1').on('click', headingClick);
  $('p').on('click', paragraphClick);

});

function headingClick() {
  
  $(this).css('color', 'red');
}

function paragraphClick() {
  $(this).css('color', 'blue');
}

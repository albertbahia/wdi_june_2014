$(function() {
  console.log("JS Loaded");
  $('h1').on('click', headingClick);
  $('p').on('click', paragraphClick);
});

  var headingClick = function() {
    // alert("I heard a click!");
    var heading = $(this);
    if (heading.css('color') === 'rgb(255, 0, 0)'){
      heading.css('color', 'black');
    } else if {
      heading.css('color', 'green');
    }
      else {
        heading.css('color', 'red');
    }
  }

  var paragraphClick = function() {
    var paragraph = $(this);
    if (paragraph.css('color') === 'rgb(0, 0, 255)'){
      paragraph.css('color', 'black');
    } else {
      paragraph.css('color', 'blue');
    }
  }

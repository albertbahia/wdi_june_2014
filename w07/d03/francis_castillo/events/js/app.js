  $(function() {
    console.log("Loaded Bro");

    $('h1').on('click', headingClick);

    $('p').on('click', paragraphClick);

  });


  var headingClick = function() {
    var heading = $(this);

    if (heading.css("color") === 'rgb(255, 0, 0)') {
      heading.css("color", "black");
    } else {
      heading.css("color", "red");
    }
    // console.log(this);
    // alert('I heard a click!');
  };

  var paragraphClick = function() {
    var para = $(this);

    if (para.css("color") === 'rgb(0, 0, 255)') {
      para.css("color", "black");
    } else {
      para.css("color", "blue");
    }
    // console.log(this);
    // alert('Paragraph got clicked!');
  };

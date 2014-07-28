$(function() {
  console.log('Loaded bro.');

  $('h1').click(headingClick);

  $('p').click(paraClick);
});

  var headingClick = function () {
    $(this).css({'color':'blue', 'text-shadow': '10px 10px #07F7DF'});
  }

  var paraClick =  function() {
    var para = $(this);

    if(para.css('color') === 'rgb(0, 0, 255)') {
      para.css('color', 'black');
    } else {
      para.css('color', 'blue');
    }
  }

$(function() {
  console.log('Loaded, bro.')
  var cat = $('#cat');
  var distance = 0;

  function catWalk() {
    if (distance == $(window).width()) {
      distance = -10;
    } else {
      cat.css('left', distance+ 'px');
      distance += 1;
    }
  }

  setInterval(function() { catWalk(), 500 });

})

var page = require('webpage').create();

page.open('http://github.com/', function() {
  page.render('github.png');
  phantom.exit();
});
page.open('http://www.nike.com/', function() {
  page.render('nike.png');
  phantom.exit();
});

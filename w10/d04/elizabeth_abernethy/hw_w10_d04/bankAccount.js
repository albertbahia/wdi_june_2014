$(function() {
  console.log('Loaded, bro');

  // Create a new bank object with 2 accounts
  var bank = {
    checking: new Account('Checking'),
    savings: new Account('Savings')
  };

  // Initialize the template and place it on the page
  var source = $('#account-template').html();
  var template = Handlebars.compile(source);
  $('#checking').replaceWith(template(bank.checking));
  $('#savings').replaceWith(template(bank.savings));

});

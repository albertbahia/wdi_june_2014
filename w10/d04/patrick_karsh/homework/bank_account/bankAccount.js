$(function() {
  console.log('Loaded, bro');

  var bank = {
    checking: new Account('checking'),
    savings: new Account('savings'), 
  }
    var source = $('#account-template').html();
    var template = Handlebars.compile(source);
    $('#checking').replaceWith(template(bank.checking));
    $('#savings').replaceWith(template(bank.savings));



    function makeDeposit() {
      console.log('button pressed'); 
      var account = $(this).parent().parent().attr('id');
      var amount = parseInt($(this).prev('input').val());
        if(account === 'checking') {
          bank.checking.deposit(amount);
        } else {
          bank.savings.deposit(amount);
        }
      $('#savings').empty();
      $('#checking').empty();
      bank.render();
    }

    function makeWithdraw() {
      console.log('button pressed'); 
      var account = $(this).parent().parent().attr('id');
      var amount = parseInt($(this).prev().prev('input').val());
        if(account === 'checking') {
          bank.checking.withdraw(amount, bank);
          console.log(amount)
        } else {
          bank.savings.withdraw(amount, bank);
        }
      $('#savings').empty();
      $('#checking').empty();
      bank.render();     
    }

    $('body').on('click', '.deposit', bank.makeDeposit);
    $('body').on('click', '.withdraw', bank.makeWithdraw);
});

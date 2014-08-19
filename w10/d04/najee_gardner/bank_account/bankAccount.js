$(function() {
  console.log('Loaded, bro');
  var bank = {
    checking: new Account('checking'),
    savings: new Account('savings'),
    template: Handlebars.compile($('#account-template').html()),
    render: function() {
      $('#checking').replaceWith(bank.template(bank.checking));
      $('#savings').replaceWith(bank.template(bank.savings));
    },
    makeDeposit: function() {
      var accountDiv = $(this).closest('.account');
      var amount = parseInt(accountDiv.find('.amount').val());

      if (accountDiv.attr('id') === 'checking') {
        bank.checking.deposit(amount);
      } else {
        bank.savings.deposit(amount);
      }

      bank.render();
    },
    makeWithdrawal: function() {
      var accountDiv = $(this).closest('.account');
      if (accountDiv.attr('id') === 'checking') {
        bank.checking.withdraw(accountDiv.find('.amount').val(), bank.savings);
      } else {
        bank.savings.withdraw(accountDiv.find('.amount').val(), bank.checking);
      }

      bank.render();
    }
  };

  bank.render();

  $('#container').on('click', '.deposit', bank.makeDeposit);
  $('#container').on('click', '.withdraw', bank.makeWithdrawal);
});

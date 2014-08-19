$(function() {
  console.log('Oh hai.');
  var bank = {
    checking: new Account('checking'),
    savings: new Account('savings'),
    template: Handlebars.compile($('#account-template').html()),
    renderFunction: function() {
      $('#checking').replaceWith(bank.template(bank.checking));
      $('#savings').replaceWith(bank.template(bank.savings));
    },
    makeDeposit: function() {
      var accountDiv = $(this).closest($('.account'));
      if (accountDiv.attr('id') === "checking") {
        bank.checking.deposit(accountDiv.find('.amount').val());
      } else {
          this.savings.deposit(accountDiv.find('.amount').val());
      }

    },
    makeWithdrawal: function() {
      var accountDiv = $(this).closest($('.account'));
      if (accountDiv.attr('id') === 'checking') {
        bank.checking.withdraw(accountDiv.find('.amount').val(), bank.savings);
      } else {
          bank.savings.withdraw(accountDiv.find('.amount').val(), bank.checking);
      }

    }
  };

  bank.renderFunction();

  // listeners
  $('body').on('click', '.deposit', bank.makeDeposit);
  $('body').on('click', '.withdraw', bank.makeWithdrawal);
});

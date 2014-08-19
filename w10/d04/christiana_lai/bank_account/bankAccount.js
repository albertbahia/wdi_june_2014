// When the deposit button is clicked, the current value of the input box should be retrieved, and the deposit function of that particular account should be called.
// When the withdrawal button is clicked, the current value of the input box should be retrieved, and the withdrawal function of that particular account should be called.
// The bank should be rendered after each successful account update. The bank's render function should be called after the bank object has been defined.

$(function() {
  bank = {
    checking: new Account('checking'),
    savings: new Account('savings'),
    template: Handlebars.compile($('#account-template').html()),

    render: function() {
      checkingAccount = $('#checking');
      savingsAccount = $('#savings');
      checkingAccount.replaceWith(this.template(this.checking));
      savingsAccount.replaceWith(this.template(this.savings));
    },

    makeDeposit: function() {
      var account = $(this).parent().parent().attr('id');
      var checkingAmount = parseInt($('#checking .amount').val());
      var savingsAmount = parseInt($('#savings .amount').val());
      if (account === 'checking') {
        bank.checking.deposit(checkingAmount);
      } else {
        bank.savings.deposit(savingsAmount);
      }
      $('#checking .balance h1').empty();
      $('#savings .balance h1').empty();
      bank.render();
    },

    makeWithdrawal: function() {
      var account = $(this).parent().parent().attr('id');
      var checkingAmount = parseInt($('#checking .amount').val());
      var savingsAmount = parseInt($('#savings .amount').val());
      if (account === 'checking') {
        bank.checking.withdraw(checkingAmount, bank);
      } else {
        bank.savings.withdraw(savingsAmount, bank);
      }
      $('#checking .balance h1').empty();
      $('#savings .balance h1').empty();
      bank.render();
    },
  };
  bank.render();
  $('body').on('click', '.deposit', bank.makeDeposit);
  $('body').on('click', '.withdrawal', bank.makeWithdrawal);
});

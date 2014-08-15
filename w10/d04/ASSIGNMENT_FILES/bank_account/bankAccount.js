$(function() {
  console.log('Loaded, bro');

  var bank = {
    checking: new Account('checking'),
    savings: new Account('savings'),
    template: Handlebars.compile($('#account-template').html()),
    render: function() {
      $('#checking').replaceWith(this.template(this.checking));
      $('#savings').replaceWith(this.template(this.savings));
    },
    makeDeposit: function() {
      var accountType = $(this).closest('.account').data('account');
      var amount = $(this).siblings('.amount').val();
      bank[accountType].deposit(amount);
      bank.render();
    },
    makeWithdrawal: function() {
      var accountType = $(this).closest('.account').data('account');
      var amount = $(this).siblings('.amount').val();
      bank[accountType].withdraw(amount, bank);
      bank.render();
    }
  };

  bank.render();
  $('#container').on('click', '.deposit', bank.makeDeposit);
  $('#container').on('click', '.withdraw', bank.makeWithdrawal)

});
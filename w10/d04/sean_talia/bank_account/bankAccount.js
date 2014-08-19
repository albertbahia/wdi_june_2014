$(function() {
  console.log('Loaded, bro');
  var bank = {
    checking: new Account('checking'),
    savings: new Account('savings'),
    template: Handlebars.compile($('#account-template').html()),
    render: function(){
      myBank = this;
      $('#checking').replaceWith(myBank.template(myBank.checking));
      $('#savings').replaceWith(myBank.template(myBank.savings));
    },
    makeDeposit: function() {
      amount = parseInt($(this).parent().children().eq(0).val());
      accountType = $(this).closest('.account').attr('id');
      bank[accountType].deposit(amount);
      bank.render();
    },
    makeWithdrawal: function() {
      amount = parseInt($(this).parent().children().eq(0).val());
      accountType = $(this).closest('.account').attr('id');
      bank[accountType].withdraw(amount, bank.savings);
      bank.render();
    }
  };
  bank.render();
  $('body').on('click', '.deposit', bank.makeDeposit)
  $('body').on('click', '.withdraw', bank.makeWithdrawal)
});

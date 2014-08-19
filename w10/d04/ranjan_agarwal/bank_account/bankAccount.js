$(function() {
  console.log('Loaded, bro');
  bank = {
    checkingAccount: new Account('checking'),
    savingAccount: new Account('savings'),
    template: Handlebars.compile($('#account-template').html()),

    render: function() {
      checkingContainer = $('#checking');
      savingContainer = $('#savings');
      checkingContainer.replaceWith(this.template(this.checkingAccount));
      savingContainer.replaceWith(this.template(this.savingAccount));
    },
    makeDeposit: function() {
      var account = $(this).parent().parent().attr('id');
      var checkingInputAmount = parseInt($('#checking .amount').val());
      var savingInputAmount = parseInt($('#savings .amount').val());
      if (account === 'checking') {
        bank.checkingAccount.deposit(checkingInputAmount);

      } else {
        bank.savingAccount.deposit(savingInputAmount);


      }
      $('#checking .balance h1').empty();
      $('#savings .balance h1').empty();
      bank.render();

    },
    makeWithdrawal: function() {
      var account = $(this).parent().parent().attr('id');
      var checkingInputAmount = parseInt($('#checking .amount').val());
      var savingInputAmount = parseInt($('#savings .amount').val());
      if (account === 'checking') {
        bank.checkingAccount.withdraw(checkingInputAmount, bank);

      } else if (bank.savingAccount){
        bank.savingAccount.withdraw(savingInputAmount, bank);

      }
      $('#savings .balance h1').empty();
      $('#checking .balance h1').empty();
      bank.render();
    }
  };
  bank.render();
  $('body').on('click', '.deposit', bank.makeDeposit);

  $('body').on('click', '.withdraw', bank.makeWithdrawal);
});

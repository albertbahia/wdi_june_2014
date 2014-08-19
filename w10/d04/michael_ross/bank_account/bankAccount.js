$(function() {
  console.log('Loaded, bro');
  console.log($(this).find($('#checking')))
  var bank = {
    checking: new Account("checking"),
    savings: new Account("savings"),
    template: Handlebars.compile($('#account-template').html()),

    render: function() {
      var checking = $('#checking');
      var savings = $('#savings');
      checking.replaceWith(this.template(this.checking));
      savings.replaceWith(this.template(this.savings));
    },

    makeDeposit: function() {
      var checkingAmount = parseInt($('#checking .amount').val());
      var savingsAmount = parseInt($('#savings .amount').val());
      if (checkingAmount > 0) {
        bank.checking.deposit(checkingAmount);
      } else if (savingsAmount > 0) {
        bank.savings.deposit(savingsAmount);
      }
      $('#checking').empty();
      $('#savings').empty();
      bank.render();

    },

    makeWithdrawal: function() {
      var account = $(this).parent().parent().attr('id');
      var checkingAmount = parseInt($('#checking .amount').val());
      var savingsAmount = parseInt($('#savings .amount').val());
      if (account === 'checking') {
        bank.checking.withdraw(checkingAmount, bank);
      } else if (bank.savings) {
        bank.savings.withdraw(savingsAmount, bank)
      }
      $('#checking').empty();
      $('#savings').empty();
      bank.render();
    }
  };

  bank.render();
  $('body').on('click', '#checking .deposit', bank.makeDeposit);
  $('body').on('click', '#savings .deposit', bank.makeDeposit);
  $('body').on('click', '#checking .withdraw', bank.makeWithdrawal);
  $('body').on('click', '#savings .withdraw', bank.makeWithdrawal);


});

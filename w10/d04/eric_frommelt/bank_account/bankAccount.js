$(function() {
  console.log('Loaded, bro');
  var bank = {
    checking: new Account('checking'),
    savings: new Account('savings'),
    template: Handlebars.compile($('#account-template').html()),
    render: function() {
      $('#checking').append(this.template(this.checking));
      $('#savings').append(this.template(this.savings));
    },
    makeDeposit: function() {
      console.log('depositing...');
      var getAccount = $(this).parent().parent().attr('id');
      var depositAmount = parseInt($(this).parent().find('input').val());
      var currentBalance = $('.deposit').parent().parent().find('.balance').find('h1').val();
      console.log(currentBalance);
      console.log(depositAmount);
      console.log(getAccount);
      if (getAccount === 'checking') {
        bank.checking.deposit(depositAmount);
      } else {
        bank.savings.deposit(depositAmount);
      };

      $('#checking').empty();
      $('#savings').empty();
      bank.render();
    },
    makeWithdrawl: function() {
      console.log('withdrawing...');

      var getAccount = $(this).parent().parent().attr('id');
      var withdrawAmount = parseInt($(this).parent().find('input').val());
      var currentBalance = $('.deposit').parent().parent().find('.balance').find('h1').val();

      if (getAccount === 'checking') {
        bank.checking.withdraw(withdrawAmount);
      } else {
        bank.savings.withdraw(withdrawAmount);
      };

      $('#checking').empty();
      $('#savings').empty();
      bank.render();
    }
  };
  bank.render();
  $('body').on('click', '.deposit', bank.makeDeposit);
  $('body').on('click', '.withdraw', bank.makeWithdrawl);

});

$(function() {
  console.log('Loaded, bro');
  var bank = {
    checking: new Account('checking'),
    savings: new Account('savings'),
    template: Handlebars.compile($('#account-template').html()),
    render: function() {
      $('#checking').replaceWith(this.template(this.checking));
      $('#savings').replaceWith(this.template(this.savings));
      $('.deposit').one('click', this.makeDeposit);
      $('.withdraw').one('click', this.makeWithdrawal);
    },
    makeDeposit: function() {
      var amount = $(this).siblings('.amount').val();
      var accType = $(this).closest('.account').attr('id');
      if (amount == parseInt(amount) && parseInt(amount) > 0) {
        if (accType === 'checking') {
          bank.checking.deposit(amount);
          bank.render();
        } else {
          bank.savings.deposit(amount);
          bank.render();
        }
      } else {
        alert('not a valid number');
      }
    },
    makeWithdrawal: function() {
      console.log('hey');
      var thisBank = bank;
      var amount = $(this).siblings('.amount').val();
      var accType = $(this).closest('.account').attr('id');
      if (amount == parseInt(amount)) {
        if (accType === 'checking') {
          bank.checking.withdraw(amount, thisBank);
          bank.render();
        } else {
          bank.savings.withdraw(amount, thisBank);
          bank.render();
        }
      } else {
        alert('not a valid number');
      }
    }
  };
  bank.render();
});

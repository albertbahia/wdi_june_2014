$(function() {
    var bank = {
      checking: new Account('checking'),

      savings: new Account('savings'),

      template: Handlebars.compile($('#account-template').html()),

      render: function() {
        var checkingHtml = this.template(this.checking);
        var savingsHtml = this.template(this.savings);
        $('#checking').replaceWith(checkingHtml);
        $('#savings').replaceWith(savingsHtml);
      },

      addEventListeners: function() {
        $('#container').on('click', '.deposit', this.makeDeposit);
        $('#container').on('click', '.withdraw', this.makeWithdrawal);
      },

      makeDeposit: function() {
        var amountInput = parseInt($(this).siblings('.amount').val());
        if ($(this).parent().parent().attr('id') === 'checking') {
          bank.checking.deposit(amountInput);
        } else {
          bank.savings.deposit(amountInput);
        };
        bank.render();
      },

      makeWithdrawal: function() {
        var amountInput = parseInt($(this).siblings('.amount').val());
        if ($(this).parent().parent().attr('id') === 'checking') {
          bank.checking.withdraw(amountInput, bank.savings);
        } else {
          bank.savings.withdraw(amountInput, bank.checking);
        };
        bank.render();
      }

    };
  bank.render();
  bank.addEventListeners();
});

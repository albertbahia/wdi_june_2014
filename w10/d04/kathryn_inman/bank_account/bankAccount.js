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
    makeDeposit: function(ev) {
      var accountType = $(ev.target).closest('.account').attr('id');
      var amount = parseInt($(ev.target).prev().val());
      console.log(accountType);
      console.log(amount);
      this[accountType].deposit(amount);
      this.render();
    },
    makeWithdrawal: function(ev) {
      var accountType = $(ev.target).closest('.account').attr('id');
      var amount = parseInt($(ev.target).prev().prev().val());
      console.log(accountType);
      console.log(amount);
      this[accountType].withdraw(amount, this);
      this.render();
    }

  }; //ends bank literal

  bank.render();

  $('body').on('click', '.deposit', bank.makeDeposit.bind(bank));
  $('body').on('click', '.withdraw', bank.makeWithdrawal.bind(bank));

});

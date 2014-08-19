$(function() {

  console.log('Loaded, bro');
  var bank = {

    checking: new Account("checking"),//create an Account obj
    savings: new Account("savings"), //creates an Account obj
    template: Handlebars.compile($('#account-template').html()),

    render: function() {
      $("#checking").replaceWith(bank.template(bank.checking));
      $("#savings").replaceWith(bank.template(bank.savings));
    },

    eventListeners: function() {
      $('#container').on('click', '.deposit', this.makeDeposit);
      $('#container').on('click', '.withdraw', this.makeWithdrawal);
    },

    makeDeposit: function() {
      var accountType = $(this).parent().parent().attr('id');
      var currentValue = parseInt($('.amount').val());
      if (accountType === "checking") {
        console.log(currentValue);
        bank.checking.deposit(currentValue);
      } else {
        bank.savings.deposit(currentValue);
      }
      bank.render();
    },

    makeWithdrawal: function() {
      var accountType = $(this).parent().parent().attr('id');
      var currentValue = parseInt($('.amount').val());
      if (accountType === "checking") {
        console.log(currentValue);
        bank.checking.withdraw(currentValue);
      } else {
        bank.savings.withdraw(currentValue);
      }
      bank.render();
    }
  };

bank.render();
bank.eventListeners();
});

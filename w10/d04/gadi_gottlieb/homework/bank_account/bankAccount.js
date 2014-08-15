$(function() {
  console.log('Loaded, bro');
  bank = {
    checking: new Account("checking"),
    savings: new Account("savings"),
    template: Handlebars.compile($('#account-template').html()),
    render: function(){
      $('#checking').replaceWith(bank.template(bank.checking));
      $('#savings').replaceWith(bank.template(bank.savings));
    },
    makeDeposit: function(){
      var amount = parseInt($(this).siblings('.amount').val());
      if ($(this).parent().parent('#checking').attr('id') === "checking"){
        bank.checking.deposit(amount);
        bank.render();
      } else {
        bank.savings.deposit(amount);
        bank.render();
      }
    },
    makeWithdrawal: function(){
      var amount = parseInt($(this).siblings('.amount').val());
      if ($(this).parent().parent('#checking').attr('id') === "checking"){
        bank.checking.withdraw(amount, bank.savings);
        bank.render();
      } else {
        bank.savings.withdraw(amount);
        bank.render();
      }
    }
  };
  bank.render();
  $('body').on('click', 'button.deposit', bank.makeDeposit);
  $('body').on('click', 'button.withdraw', bank.makeWithdrawal);
});

$(function() {
  console.log('Loaded, bro');
  var bank = {
    checkingAccount: new Account("checking"),
    savingsAccount: new Account("savings"),
    template: function(domElement, accType) {
      var source = $('#account-template').html();
      var template = Handlebars.compile(source);
      if (domElement === "checking") {
        var newHTML = template(this.checkingAccount);
      } else {
        var newHTML = template(this.savingsAccount);
      }
      $('#' + domElement).replaceWith(newHTML);
    },
    render: function(whereToAppend) {
      this.template(whereToAppend);
    },
    makeDeposit: function() {
      var inputVal = $(this).siblings().eq(0).val();
      var type = $(this).parent().parent().data("account");
      if (type === 'checking' && !isNaN(parseInt(inputVal))) {
        bank.checkingAccount.deposit(parseInt(inputVal));
      } else if (type === 'savings' && !isNaN(parseInt(inputVal))){
        bank.savingsAccount.deposit(parseInt(inputVal));
      }
      bank.render(type);
    },
    makeWithdrawal: function() {
      var inputVal = $(this).siblings().eq(0).val();
      var type = $(this).parent().parent().data("account");
      if (type === 'checking' && !isNaN(parseInt(inputVal))) {
        if (bank.checkingAccount.balance < inputVal) {
          bank.checkingAccount.withdraw(parseInt(inputVal), bank);
          bank.render("checking");
          bank.render("savings");
        } else {
          bank.checkingAccount.withdraw(parseInt(inputVal), bank);
        }
      } else if (type === 'savings' && !isNaN(parseInt(inputVal))) {
        bank.savingsAccount.withdraw(parseInt(inputVal), bank);
      }
      bank.render(type);
    }
  };
  bank.render("checking");
  bank.render("savings");
  $('#container').on('click', '.deposit', bank.makeDeposit);
  $('#container').on('click', '.withdraw', bank.makeWithdrawal);

});

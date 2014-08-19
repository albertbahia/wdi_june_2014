$(function() {
  console.log('Loaded, bro');
  var bank = function(){
    this.checkingAccount = new Account('checking', 100);
    this.savingsAccount = new Account('savings', 0);
  };
  template: Handlebars.compile($('#account-template'));

  render: function(){
    template(bank.checkingAccount);
    template(bank.savingsAccount);
  }

  makeDeposit: function(event){

  };
  
  makeWithdrawal: function(event){

  };
});

var bank = {type: 'checking', balance: 9001};
template(bank);

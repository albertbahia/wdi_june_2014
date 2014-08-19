$(function() {
  console.log('Loaded, bro');
  
  //declare bank obj with two accounts
  bank = { 
    checking: new Account('checking'),
    savings: new Account('savings'),

    //grabs hbs template
    template: Handlebars.compile($('#account-template').html()), 

    //renders template
    render: function() {
      $('#checking').replaceWith(bank.template(bank.checking));
      $('#savings').replaceWith(bank.template(bank.savings));
    },

    makeDeposit: function(account){
      console.log('made a deposit, bro!');
      var amount = parseInt($(account.target).siblings('.amount').val());
      console.log(amount);
      var accountType = $(account.target).closest('.account').attr('id');
      console.log(accountType);
      var currentBalance = $('.balance h1').text();
      console.log(currentBalance);

      if (accountType == 'savings') {
        //runs account prototype function
        bank.savings.deposit(amount);
        $(currentBalance).replaceWith(bank.savings.balance);
      } else {
        bank.checkings.deposit(amount);
        $(currentBalance).replaceWith(bank.checking.balance);
      }
      //re-renders after deposit
      bank.render();
    },

    makeWithdraw: function(account){
      console.log('made a withdraw, bro!');
      var amount = parseInt($(account.target).siblings('.amount').val());
      console.log(amount);
      var accountType = $(account.target).closest('.account').attr('id');
      console.log(accountType);
      var currentBalance = $('.balance h1').text();
      console.log(currentBalance);

      if (accountType == 'savings') {
        //runs account prototype function
        bank.savings.withdraw(amount);
        $(currentBalance).replaceWith(bank.savings.balance);
      } else {
        bank.checkings.withdraw(amount);
        $(currentBalance).replaceWith(bank.checking.balance);
      }
      //re-renders after withdraw
      bank.render();
    }
  };

  //event listeners for buttons
  $('body').on('click', '#savings .deposit', bank.makeDeposit.bind(bank));
  $('body').on('click', '#savings .withdraw', bank.makeWithdraw.bind(bank));

  //renders templates on page, after listeners
  bank.render();
});

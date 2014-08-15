$(function() {
  console.log('Loaded, bro');

  // Create a new bank object with 2 accounts
  var bank = {
    checking: new Account('checking'),
    savings: new Account('savings'),

    template: Handlebars.compile($('#account-template').html()),

    render: function() {
      $('#checking').replaceWith(bank.template(bank.checking));
      $('#savings').replaceWith(bank.template(bank.savings));
    },

    makeDeposit: function(ev) {
      var depositAmount = parseInt($(ev.target).siblings('.amount').val());
      var accountType = $(ev.target).closest('.account').attr('id');
      var accountBalance = $('.balance h1').text();
      if ( accountType == 'checking' ) {
        bank.checking.deposit(depositAmount);
        $(accountBalance).text(bank.checking.balance);
      } else {
        bank.savings.deposit(depositAmount);
        $(accountBalance).text(bank.savings.balance);
      }
      bank.render();
    },

    makeWithdrawal: function(ev) {
      var withdrawalAmount = parseInt($(ev.target).siblings('.amount').val());
      var accountType = $(ev.target).closest('.account').attr('id');
      var accountBalance = $('.balance h1').text();
      if ( accountType == 'checking' ) {
        bank.checking.withdraw(withdrawalAmount, this);
        $(accountBalance).text(this.checking.balance);
      // } else {
      //   bank.savings.withdraw(withdrawalAmount);
      //   $(accountBalance).text(bank.savings.balance);
      }
      bank.render();
    }
  };

  $('body').on('click', '.deposit', bank.makeDeposit.bind(bank));
  $('body').on('click', '.withdraw', bank.makeWithdrawal.bind(bank));


  // Initialize the template and place it on the page
  // var source = $('#account-template').html();
  // var template = Handlebars.compile(source);
  // $('#checking').replaceWith(template(bank.checking));
  // $('#savings').replaceWith(template(bank.savings));

  bank.render();

});

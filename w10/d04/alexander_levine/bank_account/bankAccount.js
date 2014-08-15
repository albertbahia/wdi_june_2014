$(function() {
  console.log('Loaded, bro');
  var source = $('#account-template').html();
  var bank = {checking: new Account("checking"),
              savings: new Account("savings"),
              template: Handlebars.compile(source),
              render: function() {
                $('#savings').append(this.template(this.savings));
                $('#checking').append(this.template(this.checking));
              },
              makeDeposit: function() {
                console.log('deposit!');
                var button = $(this);
                var balance = $('.deposit').parent().parent().find('.balance').find('h1').val();
                var accountType = button.parent().parent().attr('id');
                var depositAmount = parseInt(button.parent().find('input').val());
                if (accountType === 'checking') {
                  bank.checking.deposit(depositAmount);
                } else {
                  bank.savings.deposit(depositAmount);
                }
                $('#savings').empty();
                $('#checking').empty();
                bank.render();
              },
              makeWithdrawl: function() {
                console.log('withdraw!');
                var button = $(this);
                var balance = $('.withdraw').parent().parent().find('.balance').find('h1').val();
                var accountType = button.parent().parent().attr('id');
                var withdrawAmount = parseInt(button.parent().find('input').val());
                if (accountType === 'checking') {
                  bank.checking.withdraw(withdrawAmount, bank);
                } else {
                  bank.savings.withdraw(withdrawAmount, bank);
                }
                $('#savings').empty();
                $('#checking').empty();
                bank.render();
              }

              };
  bank.render();
  $('body').on('click', '.deposit', bank.makeDeposit);
  $('body').on('click', '.withdraw', bank.makeWithdrawl);
});

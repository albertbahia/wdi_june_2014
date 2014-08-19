var Account = function(type) {
  this.type = type;
  this.balance = 0;
};

Account.prototype = {
  deposit: function(amount) {
    if (amount > 0) {
      this.balance += amount;
    };
  },

  withdraw: function(amount, secondAccount) {
    if (amount <= this.balance) {
      this.balance -= amount;
    } else if (amount > this.balance) {
      var overage = amount - this.balance;
      this.balance = 0;

      if (overage < secondAccount.balance) {
        secondAccount.balance -= overage;
      };
    };
  }
};

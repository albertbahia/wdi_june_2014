function Account (type) {
  this.type = type;
  this.balance = 0;
}

Account.prototype.deposit = function(money) {
  if (this.balance >= 0) {
    this.balance += money;
  }
};

Account.prototype.withdraw = function(money, obj) {
  if (obj.checkingAccount.balance > 0 && (obj.checkingAccount.balance - money) > 0){
    obj.checkingAccount.balance -= money;
  } else if ((obj.checkingAccount.balance - money) < 0 && obj.checkingAccount.balance != 0) {
      if (obj.savingsAccount.balance != 0 && (obj.savingsAccount.balance - money) != 0) {
        money -= obj.checkingAccount.balance;
        obj.savingsAccount.balance -= money;
        obj.checkingAccount.balance = 0;
      }
  }
};

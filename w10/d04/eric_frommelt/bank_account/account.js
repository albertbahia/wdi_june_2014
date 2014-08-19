var Account = function (type) {
  this.type = type;
  this.balance = 0;
}

Account.prototype.deposit = function(amount) {
  if (amount > 0) {
    this.balance += amount;
  };
}

Account.prototype.withdraw = function(amount, type) {
  if (amount <= this.balance) {
    this.balance -= amount;
  } else {
    var transferAmt = amount - this.balance;
    if (type === 'checking' && transferAmt <= type.balance) {
      this.balance = 0;
      bank.savings -= transferAmt;
    } else {
      return this.balance;
    };
  };
}

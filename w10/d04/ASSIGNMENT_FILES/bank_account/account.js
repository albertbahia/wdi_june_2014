var Account = function(type) {
  this.type = type;
  this.balance = 0;
};

Account.prototype.deposit = function(amount) {
  if (parseInt(amount) > 0) {
    this.balance += parseInt(amount);
  }
}

Account.prototype.withdraw = function(amount, bank) {
  if (parseInt(amount) <= this.balance) {
    this.balance -= parseInt(amount);
  } else if (parseInt(amount) > this.balance && this.type === 'checking') {
    var overdraft = amount - this.balance;
    if (bank.savings.balance >= overdraft) {
      bank.savings.withdraw(overdraft);
      this.balance = 0;
    }
  }
}
function Account(type) {
  this.type = type;
  this.balance = 0;
}

Account.prototype.deposit = function(amount) {
  if (amount > 0) {
    this.balance += amount;
  }
};

Account.prototype.withdraw = function(amount, bank) {
  if (amount <= this.balance) {
    this.balance -= amount;
  } else {
    var carryOver = amount - this.balance;
    if (this.type === "checking" && carryOver <= bank.savings.balance) {
      console.log(carryOver);
      this.balance = 0;
      bank.savings.balance -= carryOver;
    } else {
      return this.balance;
    }
  }
};

function Account(type, balance) {
  this.type = type;
  this.balance = 0;
}

Account.prototype.deposit = function(amount) {
  if ( amount > 0 ) {
    this.balance += amount;
  } else {
    this.balance;
  }
  // this.balance = amount > 0 ? this.balance += amount : this.balance;
};

Account.prototype.withdraw = function(amount, bank) {
  if ( amount <= bank.checking.balance ) {
    bank.checking.balance -= amount;
  } else if ( bank.savings.balance >= (amount - bank.checking.balance) ) {
    var difference = (amount - bank.checking.balance);
    bank.savings.balance = (bank.savings.balance - difference);
    bank.checking.balance = 0;
  }
};

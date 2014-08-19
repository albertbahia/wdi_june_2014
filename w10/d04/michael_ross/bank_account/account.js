function Account(type) {
  this.type = type;
  this.balance = 0;
};

Account.prototype.deposit = function(amount) {
  if (amount > 0) {
    this.balance += amount;
    return this.balance;
  } else if (amount === 0){
    return false;
  }
};

Account.prototype.withdraw = function(amount, bank) {
  overage = amount - bank.checking.balance;
  if (amount <= this.balance) {
    this.balance -= amount;
  } else if (amount > this.balance && this.type === 'checking' && bank.savings.balance >= amount) {
    bank.checking.balance = 0;
    bank.savings.balance -= overage;
  } else if (overage < bank.savings.balance) {
    bank.checking.balance = 0;
    bank.savings.balanace -= overage;
  } else if (overage = bank.savings.balance) {
    bank.checking.balance = 0;
    bank.savings.balance = 0;
  } else {
    alert("INSUFFICIENT FUNDS, BRAAAAH")
  }
};

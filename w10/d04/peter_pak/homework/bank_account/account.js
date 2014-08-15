function Account(type) {
  this.type = type;
  this.balance = 0;
}

Account.prototype.deposit = function(amount) {
  this.balance += parseInt(amount);
};

Account.prototype.withdraw = function(amount, bank) {
  if (this.type == 'checking') {
    if (amount <= this.balance ) {
      this.balance -= amount;
    } else {
      var remaining = amount - this.balance;
      if (remaining < bank.savings.balance) {
        this.balance = 0;
        bank.savings.balance -= remaining;
      } else {
        alert('nsf');
      }
    }
  } else {
    if (amount <= this.balance ) {
      this.balance -= amount;
    } else {
      alert('nsf');
    }
  }
  bank.render();
};

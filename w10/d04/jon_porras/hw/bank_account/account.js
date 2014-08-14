function Account(type) {
  this.type = type;
  this.balance = 0;
}

Account.prototype.deposit = function(amount) {
  if(amount>=0) {
    this.balance += amount;
  }
}

Account.prototype.withdraw = function(amount, bank) {
  if(amount<=this.balance) {
    this.balance -= amount;
  } else if(amount>this.balance && this.type === 'checking' && bank.savings.balance>=amount) {
    bank.savings.balance -= amount;
  } else {
    alert("you aint got the funds bruh.")
  }
}

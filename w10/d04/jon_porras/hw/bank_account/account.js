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
var remainingBalance = amount - bank.checking.balance;

  if(amount<=this.balance) {
    this.balance -= amount;
  } else if(amount>this.balance && this.type === 'checking' && bank.savings.balance>=amount) {
    bank.savings.balance -= amount;
  } else if(remainingBalance < bank.savings.balance) {
    bank.checking.balance = 0;
    bank.savings.balance -= remainingBalance;
  } else if(remainingBalance===bank.savings.balance){
    bank.savings.balance = 0;
    bank.checking.balance = 0;
  } else {
    alert("you aint got the funds bruh.")
  }
}

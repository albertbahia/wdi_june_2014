function Account(type) {
  this.type = type;
  this.balance = 0;
}

Account.prototype.deposit = function(amount){
  if (amount > 0) {
    this.balance += amount;
  }
}

Account.prototype.withdraw = function(amount, secondAccount){
  var currentBalance = this.balance;
  if (amount <= currentBalance) {
    this.balance -= amount;
  } else if (amount > currentBalance) {
      if (secondAccount.balance > amount){
        var difference = this.balance - amount;
        this.balance = 0;
        secondAccount.balance += difference;
      }
      return this.balance;
    }
  return this.balance;
  }

function Account(type) {
  this.type = type;
  this.balance = 0;
}

Account.prototype.deposit = function(amount) {
  if (amount > 0) {
    this.balance += amount;
  }
};

Account.prototype.withdraw = function(amount, otherAccount) {
  var remainder = this.balance - amount;

  if (amount < this.balance) {
    this.balance - amount;
    return this.balance;
  } else {
    var remainder = amount - this.balance;
      if (otherAccount.balance - remainder > 0) {
        otherAccount.balance - remainder;
        return this.balance;
        return otherAccount.balance;
      } else {
        alert("NOPE");
      }
  }
};


// var checking = new Account("checking");
// var savings = new Account("savings");
//
// checking.deposit(200);
// savings.deposit(100);
//
// checking.withdraw(1, savings);

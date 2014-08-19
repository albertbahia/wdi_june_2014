function Account(type) {
  this.type = type;
  this.balance = 0;

  Account.prototype.deposit = function(amt) {
    console.log(amt);
    if (amt > 0) {
      this.balance = this.balance + amt;
    }
    return this.balance;
  };

  Account.prototype.withdraw = function(amt) {
    if (amt <= this.balance) {
      this.balance = this.balance - amt;
      return this.balance;
    }
    else if (amt > this.balance) {
      if (this.type == "savings" && this.balance >= amt ) {
        this.checking = 0;
      }
    }
  }
}

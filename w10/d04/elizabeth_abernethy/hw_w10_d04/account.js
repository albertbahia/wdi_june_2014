function Account(type, balance) {
  this.type = type;
  this.balance = 0;
}

Account.prototype.deposit = function(amount) {
  if ( amount > 0 ) {
    return (this.balance + amount);
  } else {
    return this.balance;
  }
};

Account.prototype.withdraw = function(amount, accountType) {
  // if ( amount <= this.balance ) {
  //   return (this.balance - amount);
  // } else {
  //   (this.balance - amount);
  //   (this)
  // }
};

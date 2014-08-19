function Account(type){
  this.type = type;
  this.balance = 0;
}

Account.prototype.deposit = function(amount){
  if (amount > 0) {
    this.balance += amount;
  }
};

Account.prototype.withdraw = function(amount, accountType){
  if (amount <= this.balance){
    this.balance -= amount;
  }
};

function Account(type) {
  this.type = type;
  this.balance = 0;
}

Account.prototype.deposit = function(amount){
  if (amount > 0) {
    this.balance += amount;
    return this.balance;
  }
  else {
    return false;
  }
}

Account.prototype.withdraw = function(amount, backupAccount){
  account = this;
  if (amount <= account.balance) {
    account.balance -= amount;
  }
  else if (account.type == 'checking') {
    overage = amount - account.balance;
    if (backupAccount.balance >= overage) {
      backupAccount.balance -= overage;
      account.balance = 0;
    }
  }
  else {
    return false;
  }
}

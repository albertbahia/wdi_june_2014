function Account(type) {
  this.type = type;
  this.balance = 0;
}
Account.prototype.deposit = function(amount) {
  if (amount > 0) {
    this.balance += amount;
  }
};
Account.prototype.withdraw = function(amount, account) {
  if (amount <= this.balance) {
    this.balance -= amount;
  } else if (account.balance > amount - this.balance) {
    amount -= this.balance;
    this.balance = 0;
    account.balance -= amount;
  } else {
    alert('No Way!')
  }

};

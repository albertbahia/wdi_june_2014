var Account = function(type){
  this.type = type;
  this.balance = 0;
};

Account.prototype.withdraw = function(amount, account){
  if (amount <= this.balance) {
    if (this.balanace - amount >= 0 ){
      return this.balanace -= amount;
    } else {
      var remaining = amount - this.balance;
      this.balanace = 0;
      return bank.savings.balanace - remaining;
    }
  } else {
    console.log("You cannot take that much money out, fool!");
  }
};

Account.prototype.deposit = function(amount, type){
  if (typeof amount == 'number' && amount > 0){
    return this.balanace += amount;
  } else {
    console.log("You can't deposit that, fool!");
  }
}; 

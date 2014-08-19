function Account(type, balance) {
  this.type = {}; 
  this.balance = 0; 
}

Account.prototype.deposit = function(amount) {
  if (amount > 0) {
    this.balance = this.balance += amount; 
  } else{
    alert("Invalid Amount"); 
  };
  return this.balance; 
};

Account.prototype.withdraw = function(amount) {
  if (bank.checking.balance >= amount) {
    bank.checking.balance = bank.checking.balance -= amount; 
  } else if ( (bank.checking.balance += bank.savings.balance) >= amount){
    var overdraft = (amount -= bank.checking.balance); 
    bank.checking.balance = 0; 
    bank.savings.balance = (bank.savings.balance -= overdraft); 
  }else{
    alert("insuficent balance"); 
  }
  return this.balance; 
}

function Account(type) {
  this.type = type;
  this.balance = 0;
}

Account.prototype.deposit = function(amount) {
  if (this.balance >= 0) {
    this.balance += amount;
    return this.balance;
  } else if (this.balance === 0){
    return false;
  }
};

Account.prototype.withdraw = function(amount, bank) {
//   if (amount <= bank.checking.balance && this.type === 'checking') {
//     bank.checking.balance -= amount;
//   } else if (bank.checking && amount > bank.checking.balance) {
//     var remainingAmount = amount - bank.checking.balance;
//     bank.checking.balance = 0;
//     bank.savings.balance -= remainingAmount;
//   } else if (bank.checking.balance === 0) {
//     bank.saving.balance -= amount;
//   } else if (bank.savings.balance < 0) {
//     bank.savings.balance = 0;
//     alert('No money, dawg');
//   } else {
//     return false;
//   }
// };
  var remainingAmount = amount - bank.checking.balance;
  if (amount <= this.balance) {
    this.balance =- amount;
    } else if (amount > this.balance && this.type === 'checking' && bank.savings.balance >= amount) {
      bank.checking.balance = 0;
      bank.savings.balance -= remainingAmount;
    } else if (remainingAmount < bank.savings.balance) {
      bank.checking.balance = 0;
      bank.savings.balance -= remainingAmount;
    } else if (remainingAmount = bank.savings.balance) {
      bank.checking.balance = 0;
      bank.savings.balance = 0;
    } else {
      alert("Broke phi broke, dawg!");
    }
  };

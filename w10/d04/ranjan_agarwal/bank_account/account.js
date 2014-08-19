// Define a constructor function for an Account. The account should have the following properties:
//
// a Type (checking or savings)
// a Balance (set to 0)

// An account should have the following prototypal properties:
//
// Deposit
// this should be a function that accepts a single parameter: an amount
// if it is greater than 0 it should add that amount to the balance of the account
// Withdraw
// this should be a function that accepts two parameters: an amount and an account type
// if the amount is less than or equal to that account's balance, then it should decrement the balance by that amount.
// Overdraft from checking account
// if the amount is greater than the current balance and the savings account has enough to cover the overage then the checking balance should be decremented to 0, and the overage should be removed from the savings account
// if the savings account cannot cover the overage then nothing should happen
// Test your Account constructor and prototypal functions in the chrome console to make sure they work.


var Account = function(type) {
  this.type = type;
  this.balance = 0;
}

Account.prototype.deposit = function(amount) {
  if (this.balance >= 0) {
    this.balance += amount;
    return this.balance;
  } else {
    return false;
  }
}

Account.prototype.withdraw = function(amount, bank) {
  console.log(bank.type);
  remainingAmount = amount - bank.checkingAccount.balance;
  if (amount <= this.balance) {
    this.balance -= amount;
  } else if (amount > this.balance && this.type === 'checking' && bank.savingAccount.balance >= amount){

    bank.checkingAccount.balance = 0;
    bank.savingAccount.balance -= remainingAmount;
  } else if (remainingAmount < bank.savingAccount.balance) {
    bank.checkingAccount.balance = 0;
    bank.savingAccount.balance -= remainingAmount;
  } else if (remainingAmount = bank.savingAccount.balance){
    bank.checkingAccount.balance = 0;
    bank.savingAccount.balance = 0;
  } else {
    alert('No funds, bro');
  }
}

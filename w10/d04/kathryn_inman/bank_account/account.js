var accountFxns = {
  deposit: function(amt) {
    this.balance += amt;
  },
  withdraw: function(amt, bankObj) {
    if (this.balance - amt >= 0) {
      this.balance -= amt;
    } else {
      if (this.type == 'checking') {
        if (bankObj.savings.balance - amt >= 0) {
          bankObj.savings.balance -= amt;
        }
      }
    }
  }
}; // ends fxns

function Account(type) {
  this.type = type;
  this.balance = 0;
};

Account.prototype = accountFxns;

// var check = new Account('checking');
// var save = new Account('savings');

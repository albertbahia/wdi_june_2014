Homework 10-04

#### Learning Objectives
- Practice using Handlebars to render templates
- Practice defining Object constructors
- Practice defining protoypal properties
- Practice encapsulating view logic in an object

# Introducing...The Bank of HAMco _Dollars in the Wind_

Tonight you are going to practice using the different types of objects in JavaScript to simulate an ATM.

### Part 1
In a file named `account.js`:

Define a constructor function for an `Account`. The account should have the following properties:

- a Type (checking or savings)
- a Balance (set to 0)

An account should have the following prototypal properties:

- Deposit
  - this should be a function that accepts a single parameter: an amount
  - if it is greater than 0 it should add that amount to the balance of the account
- Withdraw
  - this should be a function that accepts two parameters: an amount and an account type
  - if the amount is less than or equal to that account's balance, then it should decrement the balance by that amount.
  - Overdraft from checking account
    - if the amount is greater than the current balance and the savings account has enough to cover the overage then the checking balance should be decremented to 0, and the overage should be removed from the savings account
    - if the savings account cannot cover the overage then nothing should happen
 
Test your Account constructor and prototypal functions in the chrome console to make sure they work.

### Part 2
In a file named `bankAccount.js`:

Define an onload function. Within that function perform the following:

Create an object literal named `bank`. This object should have the following properties:

- a checking account
  - this should be created using your Account constructor
- a savings account
  - this should be created using your Account constructor
- a template function
  - this should use the Handlebars object to compile a template from a script tag on the DOM
  - this should be called to render the account object to the screen
- a render function
  - this should call the template function and replace the current account views with the updated account 
- a makeDeposit function
- a makeWithdrawal function

The makeDeposit and makeWithdrawal functions should be utilized as callbacks for the event handlers attached to each account's buttons.
  
  - When the deposit button is clicked, the current value of the input box should be retrieved, and the deposit function of that particular account should be called.
  - When the withdrawal button is clicked, the current value of the input box should be retrieved, and the withdrawal function of that particular account should be called.

The bank should be rendered after each successful account update.
The bank's render function should be called after the bank object has been defined.

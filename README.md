# Bank tech test
Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time. This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

## Specification
## Requirements
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

## User Stories
```
As a user
So I can add money to my account
I want to be able to deposit a certain amount

As a user0p
So I can withdrawal money
I want to be able to make a withdrawal

As a User
So I can see how much I have in my account
I want to be able to print the balance

As a User
So I have information on my bank usage
I want to see the date I credited or debited my account and show the balance
```

### Class Diagrams
![Class Diagrams](/images/Diagram.png)

### Issues with Test
#### Failing RSpec test, unsure how to fix
![Error Messages](/images/Error_Messages1.png)
![Error Messages](/images/Error_Messages2.png)

#### IRB Showcase:
![IRB](/images/IRB.png)

### Self-assessment
Once you have completed the challenge and feel happy with your solution, here's a form to help you reflect on the quality of your code: https://docs.google.com/forms/d/1Q-NnqVObbGLDHxlvbUfeAC7yBCf3eCjTmz6GOqC9Aeo/edit

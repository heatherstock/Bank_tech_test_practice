# Bank Practice Tech Test

## Approach

I tried as much as possible to avoid 'big up front design' and instead start small. I originally started with a Bank class, but quickly realised, before I even wrote the first test I need to break it down and start from an individual Account class that would initialize with a starting balance of zero and would simply update this balance using deposit and withdraw methods. 

I decided then to begin on a Statement class, that started off simply as a way to store a string in an array when depositing and withdrawing money. I decided to have a separate class for Statement as I wanted to aim for clear single responsibilties from the beginning. Using a simple string instead of an instance of transaction allowed me to focus on developing the parts of the code I already had, instead of getting caught up in how transaction was going work at the same time. 

Once I had a super simple Statement and Account class I created the Transaction class, which simply initialized with the arguments passed to it when depositing and withdrawing money. The new instances of Transaction then updated the Statement instead of a simple string. 

* N.B. In the future I would probably like to spend more time thinking about how the deposit / withdraw methods instanciate transaction and whether there is a better way to approach this. 

Finally, I iterated over the array of Transactions in reverse order in the Statement class and puts-ed them to the display. 

* N.B. I ran into an issue displaying whole numbers with 2 decimal places (i.e. 10.00), so it doesn't match the spec exactly in this regard. I would spend more time on this in the future. 

I used Test Driven Development for the whole development of the app, which helped me get back into using Ruby after having a short break. I found it very useful to use IRB to feature test, as there were a few occasions where I was having trouble with mocking my code in rspec, rather than the code itself. 

## Running and testing the app 

First:
```
bundle install 
```
Run rspec:
```
rspec
```
Run simplecov:
```
open coverage/index.html
```
Run app:
``` 
irb
require './lib/account.rb'
require './lib/transaction.rb'
require './lib/statement.rb'
```
The app in action:
![alt text](assets/Screenshot 2018-03-27 16.57.29)

## Specification Given 

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

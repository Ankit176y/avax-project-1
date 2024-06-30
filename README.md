# Using  require,revert,assert

In this project we get to know about error-handling process in solidity

## Description
Here there are three methods that constitute the error-handling process in Solidity  

require(): Used to validate certain conditions before further execution of a function. It takes two parameters as an input.The first parameter is the condition that you want to validate and the second parameter is the message that will be passed back to the caller if the condition fails.

assert(): The assert function, like require, is a convenience function that checks for conditions. If a condition fails, then the function execution is terminated with an error message

revert(): Can be used to flag an error and revert the current call. You can also provide a message containing details about the error, and the message will be passed back to the caller.

This is link to my source code https://gist.github.com/Ankit176y/c3f66099c79c0e9bb13bbef7183f7167

## Getting Started
I Have created a new contract name "RequireAssertRevert" in which Fristly i have initialise constructor in which owner is set msg.sender and balances with amount zero,Next I have created three functions .

1.deposit function : In this function i have used 'require' statement which checks that msg.sender is owner or not. if the sender is not owner then it returns the statement that "only owner can deposit" or if sender is owner then it add that amount to the balances

2.withdraw function : In this function ,I have used require which checks for amout if the amount to be withdraw is less than the balance,if the condition satisify amount is withdrawn from the balances and ,also I have use 'assert' statement that checks that balance should not go zero if balance got zero then if shows with an error message.

3.transfer function: In this function, I have used 'revert' statement which checks for the recipient address that it should not be zero , then again require statement which ensure that the amount is not greater than balance.

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with name "RequireAssertRevert.sol". Copy and paste the following code into the file:
```
pragma solidity ^0.8.26;

contract RequireAssertRevert {
    address public owner;
    uint public balance;

    constructor() {
        owner = msg.sender;
        balance = 0;
    }

    function deposit(uint _amount) public {
        require(msg.sender == owner, "Only the owner can deposit");
        balance += _amount;
    }

    function withdraw(uint _amount) public {
        require(_amount <= balance, "Insufficient balance");
        balance -= _amount;
        assert(balance >= 0); // Ensuring balance never goes negative
    }

    function transfer(address _recipient, uint _amount) public {
        if (_recipient == address(0)) {
            revert("Cannot transfer to the zero address");
        }
        require(_amount <= balance, "Insufficient balance");
        balance -= _amount;
    }
}

```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.26" , and then click on the "RequireAssertRevert.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "RequireAssertRevert.sol" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, we can interact with it by calling the diposit function withdraw function and transfer function.

## Authors
Ankit kumar

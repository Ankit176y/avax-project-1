# Using function require,revert,assert

Simple overview of use/purpose.

## Description

An in-depth paragraph about your project and overview of use.

## Getting Started


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

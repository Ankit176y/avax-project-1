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

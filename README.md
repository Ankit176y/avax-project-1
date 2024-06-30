Creating New Token
This Solidity program is just creating our own Token on remix . The purpose of this program is to create our own token in Solidity and want to get a feel for how it works.

Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has two functions :Mint function (It will increase the total supply and the balance of the “sender” with the Value) . Burn function (It will deduct the value from the total supply and from the balance of the “sender”.)

This is link to my source code [https://gist.github.com/Ankit176y/1e81c7522f3301b1d5a16f56327e8e55](https://gist.github.com/Ankit176y/c3f66099c79c0e9bb13bbef7183f7167)

Getting Started
I have created a new contract named "MyToken" in which I Have created 3 variables in which two are string (Token_name ="Tether" and Token_abbrev = "USDT") and one is unsigned integer Total_supply=0, next we have mapped our address with the Balances .Then we have created two function 1.Mint function which take address and value as parameter's and then increase the total supply and the balance of the “sender” with the Value. 2.Burn function takes address and value as parameter, then if statement is executed which says that balance of "sender" is greater than or equal to the amount that is supposed to be burned, Then It will deduct the value from the total supply and from the balance of the “sender”.

Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with name "creating_token.sol". Copy and paste the following code into the file:

pragma solidity 0.8.18;
contract MyToken {

    string public Token_Name ="Tether";
    string public Token_Abbrev = "USDT";
    uint public Total_supply = 0;

    mapping(address => uint) public Balances;

    function mint (address _Address,uint _Value) public {
        Total_supply += _Value;
        Balances[_Address]+= _Value;
    }
    function Burn (address _Address,uint _Value) public {
        if(Balances[_Address] >= _Value){
        Total_supply -= _Value;
        Balances[_Address]-= _Value;
        }
}
}
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile creating_token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "My Token-creating_token.sol" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint function and burn function.

Authors
Ankit kumar

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract banksys {
    address public owner;

    constructor(){
         owner = msg.sender ;
    }
    mapping(address => uint) public balances;

    function deposit(uint256 value) public {
        require(msg.sender==owner, "make sure you deposit in your account");
        balances[msg.sender] += value;

        
        assert(balances[msg.sender] >= value); //to update balances corrreeclty
    }

    function withdraw(uint amount) public {
        require(amount <= balances[msg.sender], "balance not enough");
        require(msg.sender==owner,"you are not the owner.");

        balances[msg.sender] -= amount;
        bool success = false;
        if (amount > 0) {
            success = true;
        }

        if (!success) {
            balances[msg.sender] += amount; 
            revert("Withdrawal failed.");
        }

        assert(balances[msg.sender] >= 0);
    }

    function checkbalance() public view returns (uint) {
        return balances[msg.sender];
    }
}

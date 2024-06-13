
// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract  GoldyToken is ERC20("GoldyToken","Gold"){
    address owner;
    
    
   constructor(){
        owner = msg.sender;
    }
    function mintGold(uint value) public {
        _mint(msg.sender , value);
        require(msg.sender==owner, "you are not the owner");   
    }

    function burn(address from , uint value) public{
        _burn(from , value );
    
    }

}
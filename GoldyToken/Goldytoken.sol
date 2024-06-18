
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract  GoldyToken is ERC20("GoldyToken","Gold"){
    address owner;
    string public tokenName = "Goldy";
    string public tokenAbb = "Gold";

    mapping(address => uint) public balances;

  
      constructor(){
        owner =msg.sender ;
      } 

        function mintGold(address to, uint256 value) public {
            require(msg.sender==owner, "you are not the owner");
            _mint(to, value);
            balances[msg.sender] += value;
        }
    
        function burnGodl(address from , uint value) public{
            _burn(from , value );
            balances[msg.sender] -= value;
        }
        function transferGold(address to, uint256 value) external {
            require (balanceOf(msg.sender) >= value, "not enough tokens to transfer");
            approve(msg.sender, value);
            transferFrom(msg.sender, to ,value);
            balances[msg.sender] -= value;
        }

}

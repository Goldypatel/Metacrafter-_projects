## Overview

`MyToken` is a simple ERC20-like token contract built on the Ethereum blockchain. This contract allows the owner to mint and burn tokens. 

## Description
It is a simple program that mimics creation of a token consequently teaching about basics of solidity like variable, function , contracts, conditional statements etc.

## Token Details

- **Token Name:** TreeStat
- **Token Abbreviation:** TS
- **Total Supply:** Dynamically managed through minting and burning.

## Public Variables

- `string public tokenName` - The name of the token (TreeStat).
- `string public tokenAbbrv` - The abbreviation of the token (TS).
- `uint public totalSupply` - The total supply of the token.
- `address owner` - The owner of the contract.

## Mappings

- `mapping (address => uint) public balances` - Keeps track of each address's balance.

## Functions

### mintT

Mints new tokens and assigns them to a specified address. Only the owner can call this function.

**Parameters:**
- `address Addr` - The address to which the minted tokens will be assigned.
- `uint value` - The number of tokens to mint.

**Function Logic:**
- Verifies that the caller is the owner.
- Increases the `totalSupply` by `value`.
- Increases the balance of `Addr` by `value`.

### BurnT

Burns tokens from assigned address and updates the value in the vbalances. Only the owner can call this function.

**Parameters:**
- `address Addr` - The address from which the tokens will be burned
- `uint value` - The number of tokens to burn.

**Function Logic:**
- Verifies that the caller is the owner.
- decreases the `totalSupply` by `value`.
- decreases the balance of `Addr` by `value`.

## Getting Started
The code runs of remix, Ethereum IDE
- > Make sure to mention the license
- > The correct or existing version of solidity
  
## Executing program
1 )  Compile the code using solidity compiler present on he left side of remix (default)
2 )  Then Run and Deply transactions (just below compiler )

#Contact
goldy39.gp@gmail.com

License
This project is licensed under the Goldy Patel License 

# BankSys Smart Contract

## Overview

This Solidity smart contract implements a simple banking system where the contract owner can deposit and withdraw funds. The contract maintains a balance mapping for each user, but only the owner can actually perform deposit and withdrawal operations. This shows the usage of REQUIRE , ASSERT AND REVERT functions in solidity

## Features

- **Deposit**: Allows the owner to deposit a specified amount of value to their account.
- **Withdraw**: Allows the owner to withdraw a specified amount of value from their account, ensuring the balance is sufficient.
- **Check Balance**: Any user can check their balance in the contract.

## Contract Details

### State Variables

- `owner`: The address of the contract owner, set during the contract deployment.
- `balances`: A mapping that holds the balance for each address.

### Constructor

```solidity
constructor(){
    owner = msg.sender;
}
```
Sets the `owner` to the address that deploys the contract.

### Functions

#### `deposit`

```solidity
function deposit(uint256 value) public
```

Allows the owner to deposit a certain amount to their balance.

- **Parameters**: `value` - The amount to be deposited.
- **Requirements**:
  - The caller must be the owner.
- **Assertions**:
  - Ensures the balance is updated correctly.

#### `withdraw`

```solidity
function withdraw(uint amount) public
```

Allows the owner to withdraw a specified amount from their balance.

- **Parameters**: `amount` - The amount to be withdrawn.
- **Requirements**:
  - The caller must be the owner.
  - The amount to be withdrawn must not exceed the current balance.
- **Assertions**:
  - Ensures the balance does not go negative.

#### `checkbalance`

```solidity
function checkbalance() public view returns (uint)
```

Returns the balance of the caller.

- **Returns**: The balance of the caller.

## Example Usage

### Deploying the Contract

Deploy the contract using a Solidity-compatible environment like Remix or Hardhat. The deploying address will become the `owner`.

## Notes

- Only the owner can deposit and withdraw funds.
- The contract uses `require` statements to enforce rules and `assert` statements to check internal consistency.

## License

This project is licensed under the MIT License.



**Description** <br/>
This project demonstrates basic error handling mechanisms in Solidity smart contracts, including the use of require, revert, assert, and custom errors. These mechanisms help ensure contract security and reliability by enforcing conditions and handling unexpected scenarios.

**Getting Started**<br/>
**Introduction**<br/>
This project contains a Solidity contract that demonstrates how to use various error handling mechanisms to validate inputs, check conditions, and handle unexpected situations. Understanding and implementing proper error handling is crucial for developing secure and robust smart contracts.

**Error Handling Mechanisms**<br/>
-> Require<br/>
The require function is used to validate inputs and conditions before execution. It reverts the transaction if the condition is not met and refunds the remaining gas.<br/>
-> Revert<br/>
The revert function is used for complex condition checks. It explicitly reverts the transaction and can include an error message.<br/>
-> Assert<br/>
The assert function is used to check for internal errors and invariants. It should only be used for conditions that should never be false. If the condition is false, it consumes all remaining gas and reverts the transaction.

**Executing program**<br/>
1 ) Compile the code using solidity compiler present on he left side of remix (default) <br/>
2 ) Then Run and Deply transactions (just below compiler )<br/>

#Contact goldy39.gp@gmail.com<br/>

License This project is licensed under the Goldy Patel License

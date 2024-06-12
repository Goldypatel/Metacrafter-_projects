
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract ErrorH {
    address owner ;
    uint public num;

    constructor(){
        owner = msg.sender;
    }


//code for require statement------------------------------------------------------------------- 
//bool / takes two para
    function checkerror1() public {
        num++;
        require(msg.sender==owner, "you are not the owner");   
    }


//code for assert statement------------------------------------------------------------------- 
// bool /used to check for internal errors
function checkerror2() public {  
        num++;
        assert(msg.sender==owner);
    }


//code for revert statement------------------------------------------------------------------- 
    function checkerror3() public{
        num++;
        if(msg.sender != owner){
        revert("Make sure you are the owner! ");
        }
    }
}

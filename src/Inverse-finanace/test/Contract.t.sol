// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "../InverseExploit.sol";

contract ContractTest is Test {
    InverseExploit i;
    function test_inverse() public {
        
        i = new InverseExploit();
        i.exploit();
    }
}
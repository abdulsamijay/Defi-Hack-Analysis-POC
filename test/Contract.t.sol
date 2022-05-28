// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

import "forge-std/Test.sol";
import "../src/Exploit.sol";


contract ContractTest is Test {
    Exploit e;
    function setUp() public {}

    function testExample() public {
        e = new Exploit();
    }
}

// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "../ParityKill.sol";

// Hack @ block 4501735 4501968

contract ContractTest is Test {
    ParityKill kill;

    function setUp() public {
        // Create a malicious contract
        kill = new ParityKill();
    }

    function testKillParity() public {
        // kill the parity wallet!
        kill.killContractByAccident();
    }
}

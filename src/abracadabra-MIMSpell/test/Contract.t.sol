// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

import "../AbracadabraExploit.sol";

contract ContractTest is Test {
    AbracadabraExploit e;

    function test_abracadbra() public {
        e = new AbracadabraExploit();

        e.exploit();
    }
}
